var ELS = function(){
    var self = this;

    self.time = null;
    self.updateInterval = 5000;

    self.log = function(){
        if(console.log){
            var args = Array.prototype.slice.call(arguments);
            args.unshift("[ELS]");
            console.log.apply(console, args);
        }
        return null;
    }

    self.decodeEmail = function(encoded){
        var parts = encoded.split(",");
        return String.fromCharCode.apply(null, parts);
    };

    self.decodeEmailElement = function(element){
        var email = self.decodeEmail(element.dataset.email);
        element.href = "mailto:"+email;
        element.textContent = email;
        return element;
    }

    self.decodeEmailElements = function(){
        var elements = document.getElementsByClassName("encoded-email");
        for(var i=0; i<elements.length; i++){
            self.decodeEmailElement(elements[i]);        
        }
        return elements;
    }

    self.getElementTime = function(element){
        if(element.tagName.toLowerCase() === "time"){
            return new Date(element.getAttribute("datetime"));
        }else{
            var times = element.getElementsByTagName("time");
            return (times.length === 0)? null : self.getElementTime(times[0]);
        }
    }

    self.removeClass = function(element){
        for(var i=1; i<arguments.length; i++){
            element.className = element.className.replace(new RegExp("(?:^|\\s)"+arguments[i]+"(?:\\s|$)"),"");
        }
        return element;
    }

    self.addClass = function(element){
        for(var i=1; i<arguments.length; i++){
            element.className += " " + arguments[i];
        }
        return element;
    }

    self.hasClass = function(element){
        for(var i=1; i<arguments.length; i++){
            if((' '+element.className+' ').indexOf(' '+arguments[i]+' ') < 0)
                return false;
        }
        return true;
    }

    self.getNextSibling = function(element){
        do{
            element = element.nextSibling;
        }while(element !== null && element.nodeType !== Node.ELEMENT_NODE);
        return element;
    }

    self.findTimezoneOffset = function(){
        var programme = document.getElementById("programme");
        if(programme){
            var time = self.getElementTime(programme);
            if(time) return time.getTimezoneOffset();
        }
        return null;
    }

    self.formatDateLocally = function(date){
        var pad = function(a){return (a<10)? "0"+a : a;}
        return date.getFullYear()
            +"."+ (date.getMonth()+1)
            +"."+ date.getDate()
            +" "+ date.getHours()
            +":"+ pad(date.getMinutes());
    }

    self.updateProgrammeEntry = function(element, current){
        current = current || new Date();
        
        var start = self.getElementTime(element);
        var nextSibling = self.getNextSibling(element.parentElement);
        var stop = (nextSibling)
            ? self.getElementTime(nextSibling)
            : start;

        if(stop < current){
            if(!self.hasClass(element, "past")){
                self.removeClass(element, "current", "future");
                self.addClass(element, "past");
            }
        }else if(start <= current){
            if(!self.hasClass(element, "current")){
                self.removeClass(element, "past", "future");
                self.addClass(element, "current");
            }
        }else{
            if(!self.hasClass(element, "future")){
                self.removeClass(element, "past", "current");
                self.addClass(element, "future");
            }
        }
        
        return element;
    }

    self.updateProgramme = function(current){
        current = current || new Date();
        
        var setter = document.getElementById("set-time");
        if(document.activeElement !== setter)
            setter.value = self.formatDateLocally(current);
        
        var entries = document.getElementsByClassName("programme-entry");
        for(var i=0; i<entries.length; i++){
            self.updateProgrammeEntry(entries[i], current);
        }
        return entries;
    }

    self.continuouslyUpdateProgramme = function(){
        // Don't use setInterval such as to fail and then abort in case of problems.
        self.updateProgramme(self.time);
        setTimeout(self.continuouslyUpdateProgramme, self.updateInterval);
        return null;
    }

    self.initTimeSetter = function(){
        var setter = document.getElementById("set-time");
        setter.addEventListener('change', function(){
            var date = new Date(Date.parse(setter.value+"Z") + 60*self.findTimezoneOffset());
            if(setter.value === ""){
                self.log("Resetting date-time to current, updating time.");
                self.time = null;
            }else if(isNaN(date.getTime())){
                self.log("Invalid date-time", setter.value, ", not changing.");
            }else{
                self.log("Updating date-time to fixed stamp", date);
                self.time = date;
            }
            self.updateProgramme(self.time);
        });
        return setter;
    }

    self.decorateBackground = function(num){
        var rand = function(n){return Math.random()*n};
        
        var html = document.documentElement;
        var body = document.body;
        var main = document.getElementsByTagName("main")[0];
        var w = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
        var h = Math.max(body.scrollHeight, body.offsetHeight, html.clientHeight, html.scrollHeight, html.offsetHeight);
        var num = num || h/200;
        
        var container = document.createElement("div");
        container.setAttribute("style", "overflow: hidden; position: absolute; left: 0; top: 0; width: 100%; height: 100%; pointer-events: none;");
        body.style.position = "relative";
        body.insertBefore(container, body.firstChild);
        for(var i=0; i<num; i++){
            var el = document.createElement("div");
            var s = 100+rand(500);
            el.style.pointerEvents = "none";
            el.style.position = "absolute";
            el.style.left = rand(w+s)-s+"px";
            el.style.top = rand(h+s)-s/2+"px";
            el.style.width = s+"px";
            el.style.height = s+"px";
            el.style.transform = "rotate("+rand(360)+"deg)";
            el.style.zIndex = -1;
            el.style.filter = "brightness("+(140+rand(10))+"%)";
            el.style.background = "rgba(28, 75, 128, 0.5)";
            container.appendChild(el);
        }
        return null;
    }

    self.init = function(){
        self.log("Initializing...");
        self.decodeEmailElements();
        if(document.getElementById("programme")){
            self.continuouslyUpdateProgramme();
            self.initTimeSetter();
        }
        self.decorateBackground();
        self.log("Done.");
        return self;
    }
}

var els = new ELS();
document.addEventListener('DOMContentLoaded', els.init, false);
