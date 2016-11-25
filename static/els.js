var ELS = function(){
    var self = this;

    self.updateInterval = 5000;

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
            return self.getElementTime(element.getElementsByTagName("time")[0]);
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

    self.updateProgrammeEntry = function(element){
        var start = self.getElementTime(element);
        var nextSibling = self.getNextSibling(element.parentElement);
        var stop = (nextSibling)
            ? self.getElementTime(nextSibling)
            : start;
        var current = new Date();

        if(stop <= current){
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

    self.updateProgramme = function(){
        var entries = document.getElementsByClassName("programme-entry");
        for(var i=0; i<entries.length; i++){
            self.updateProgrammeEntry(entries[i]);
        }
        return entries;
    }

    self.continuouslyUpdateProgramme = function(){
        // Don't use setInterval such as to fail and then abort in case of problems.
        self.updateProgramme();
        setTimeout(self.continuouslyUpdateProgramme, self.updateInterval);
        return null;
    }

    self.init = function(){
        self.decodeEmailElements();
        self.continuouslyUpdateProgramme();
        return self;
    }
}

var els = new ELS();
document.addEventListener('DOMContentLoaded', els.init, false);
