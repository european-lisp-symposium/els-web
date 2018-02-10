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

    self.urlencode = function(string) {
        return encodeURIComponent(string).replace(/[!'()*]/g, function(c) {
            return '%' + c.charCodeAt(0).toString(16);
        });
    }

    self.createPostPayload = function(data) {
        var result = "";
        for(var key in data){
            result += self.urlencode(key)+"="+self.urlencode(data[key])+"&";
        }
        return result;
    }

    self.findTimezoneOffset = function(){
        var programme = document.getElementById("programme");
        if(programme){
            var time = programme.getElementsByTagName("time");
            if(time.length !== 0){
                time = time[0].getAttribute("datetime");
                var plus = time.lastIndexOf("+");
                return time.substring((plus>=0)? plus : time.lastIndexOf("-"));
            }
        }
        return null;
    }

    self.toLocalDate = function(date){
        // Find our offset and invert it
        var offset = self.findTimezoneOffset();
        var revoffset = ((offset[0] == "+")?"-":"+")+offset.substring(1);
        // Translate browser time to normalised UTC time and offset to conference time.
        var utctime = date.toISOString().slice(0, -1);
        return new Date(Date.parse(utctime+revoffset)+date.getTimezoneOffset()*60000); 
    }

    self.formatDateLocally = function(date){
        var local = self.toLocalDate(date);
        var pad = function(a){return (a<10)? "0"+a : a;}
        return local.getFullYear()
            +"."+ (local.getMonth()+1)
            +"."+ local.getDate()
            +" "+ local.getHours()
            +":"+ pad(local.getMinutes());
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
            var date = new Date(Date.parse(setter.value+self.findTimezoneOffset()));
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

    self.initRegistration = function(){
        var form = document.getElementById('payment-form');
        var pubkey = document.querySelector('head [name=stripe-public-key]').getAttribute("content");
        var stripe = Stripe(pubkey);
        var elements = stripe.elements();
        var errors = document.getElementById('errors');

        var inputs = form.querySelectorAll('.input');
        Array.prototype.forEach.call(inputs, function(input) {
            input.addEventListener('focus', function() {
                input.classList.add('focused');
            });
            input.addEventListener('blur', function() {
                input.classList.remove('focused');
            });
            input.addEventListener('keyup', function() {
                if (input.value.length === 0) {
                    input.classList.add('empty');
                } else {
                    input.classList.remove('empty');
                }
            });
        });
        
        var elementClasses = {
            focus: 'focused',
            empty: 'empty',
            invalid: 'invalid',
        };

        var elementStyles = {
            base: {
                fontSize: '18px',
                '::placeholder': {color: 'transparent'}
            }
        };

        var createElement = function(type, id){
            var element = elements.create(type, {
                style: elementStyles,
                classes: elementClasses,
            });
            element.mount(id);
            element.addEventListener('change', function(event) {
                var displayError = document.getElementById('errors');
                if (event.error) {
                    displayError.textContent = event.error.message;
                } else {
                    displayError.textContent = '';
                }
            });
            return element;
        };

        var card = createElement('cardNumber', "#card-number");
        createElement('cardExpiry', "#card-expiry");
        createElement('cardCvc', "#card-cvc");
        
        var stripeTokenHandler = function(token) {
            self.log("Submitting registration to server-side script...");
            var req = new XMLHttpRequest();
            try {
                req.onreadystatechange = function() {
                    if (req.readyState == XMLHttpRequest.DONE) {
                        if (req.status == 200) {
                            self.log("Registration successful");
                            // FIXME: Celebrate
                        } else {
                            self.log("Registration failed:",req.response);
                            errors.textContent = req.response;
                        }
                    }
                }
                req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                req.open("POST", form.getAttribute("action"));
                data["token"] = token.id;
                req.send(self.createPostPayload(data));
            } catch(err) {
                self.log("Local failure:", err);
                errors.textContent = ""+err;
            }
        };

        form.addEventListener('submit', function(event) {
            self.log("Received registration submit, creating token.");
            event.preventDefault();
            var data = {
                kind: document.querySelector(".kind [checked]").value,
                name: document.getElementbyId("name").value,
                email: document.getElementbyId("email").value,
                affiliation: document.getElementbyId("affiliation").value,
                foodRestrictions: document.getElementbyId("food-restrictions").value,
                banquet: document.getElementbyId("banquet").checked,
                certificate: (document.getElementbyId("certificate").checked?"yes":"no"),
                proceedings: (document.getElementbyId("proceedings").checked?"yes":"no")
            };

            stripe.createToken(card, {name: data.name}).then(function(result) {
                if (result.error) {
                    self.log("Token creation failed:",result);
                    errors.textContent = result.error.message;
                } else {
                    self.log("Token creation successful.");
                    stripeTokenHandler(result.token, data);
                }
            });
        });
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
        if(document.getElementById("registration")){
            self.initRegistration();
        }
        self.decorateBackground();
        self.log("Done.");
        return self;
    }
}

var els = new ELS();
document.addEventListener('DOMContentLoaded', els.init, false);
