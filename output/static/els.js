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
    };

    self.decodeEmail = function(encoded){
        var parts = encoded.split(",");
        return String.fromCharCode.apply(null, parts);
    };

    self.decodeEmailElement = function(element){
        var email = self.decodeEmail(element.dataset.email);
        element.href = "mailto:"+email;
        element.textContent = email;
        return element;
    };

    self.decodeEmailElements = function(){
        var elements = document.getElementsByClassName("encoded-email");
        for(var i=0; i<elements.length; i++){
            self.decodeEmailElement(elements[i]);
        }
        return elements;
    };

    self.getElementTime = function(element){
        if(element.tagName.toLowerCase() === "time"){
            return new Date(element.getAttribute("datetime"));
        }else{
            var times = element.getElementsByTagName("time");
            return (times.length === 0)? null : self.getElementTime(times[0]);
        }
    };

    self.removeClass = function(element){
        for(var i=1; i<arguments.length; i++){
            element.className = element.className.replace(new RegExp("(?:^|\\s)"+arguments[i]+"(?:\\s|$)"),"");
        }
        return element;
    };

    self.addClass = function(element){
        for(var i=1; i<arguments.length; i++){
            element.className += " " + arguments[i];
        }
        return element;
    };

    self.hasClass = function(element){
        for(var i=1; i<arguments.length; i++){
            if((' '+element.className+' ').indexOf(' '+arguments[i]+' ') < 0)
                return false;
        }
        return true;
    };

    self.getNextSibling = function(element){
        do{
            element = element.nextSibling;
        }while(element !== null && element.nodeType !== Node.ELEMENT_NODE);
        return element;
    };

    self.urlencode = function(string) {
        return encodeURIComponent(""+string).replace(/[!'()*]/g, function(c) {
            return '%' + c.charCodeAt(0).toString(16);
        });
    };

    self.createPostPayload = function(data) {
        var result = "";
        for(var key in data){
            var item = data[key];
            if(item instanceof Array){
                for (entry of item){
                    result += self.urlencode(key+"[]")+"="+self.urlencode(entry)+"&";
                }
            } else {
                result += self.urlencode(key)+"="+self.urlencode(item)+"&";
            }
        }
        return result;
    };

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
    };

    self.toLocalDate = function(date){
        // Find our offset and invert it
        var offset = self.findTimezoneOffset();
        var revoffset = ((offset[0] == "+")?"-":"+")+offset.substring(1);
        // Translate browser time to normalised UTC time and offset to conference time.
        var utctime = date.toISOString().slice(0, -1);
        return new Date(Date.parse(utctime+revoffset)+date.getTimezoneOffset()*60000);
    };

    self.formatDateLocally = function(date){
        var local = self.toLocalDate(date);
        var pad = function(a){return (a<10)? "0"+a : a;};
        return local.getFullYear()
            +"."+ (local.getMonth()+1)
            +"."+ local.getDate()
            +" "+ local.getHours()
            +":"+ pad(local.getMinutes());
    };

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
    };

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
    };

    self.continuouslyUpdateProgramme = function(){
        // Don't use setInterval such as to fail and then abort in case of problems.
        self.updateProgramme(self.time);
        setTimeout(self.continuouslyUpdateProgramme, self.updateInterval);
        return null;
    };

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
    };

    self.busy = function() {
        document.querySelector("#busy").style.display = "flex";
    };

    self.unbusy = function() {
        document.querySelector("#busy").style.display = "none";
    };

    self.showFailure = function(msg) {
        self.unbusy();
        self.hideSuccess();
        document.querySelector("#failure").style.display = "block";
        document.querySelector("#failure").textContent = msg;
    };

    self.hideFailure = function(){
        document.querySelector("#failure").style.display = "none";
    };

    self.showSuccess = function(msg) {
        self.unbusy();
        self.hideFailure();
        document.querySelector("#success").style.display = "block";
        document.querySelector("#success").textContent = msg;
    };

    self.hideSuccess = function(){
        document.querySelector("#success").style.display = "none";
    };

    self.request = function(target, data, success, failure) {
        self.log("Submitting to", target);
        var req = new XMLHttpRequest();
        try {
            req.onreadystatechange = function() {
                if (req.readyState == XMLHttpRequest.DONE) {
                    if (req.status == 200) {
                        self.log("Request succeeded:", req.response);
                        success(req.response);
                    } else {
                        self.log("Request failed:", req.response);
                        failure(req.response);
                    }
                }
            };
            req.open("POST", target);
            req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            req.send(self.createPostPayload(data));
        } catch(err) {
            self.log("Local failure:", err);
            failure(err);
        }
    };

    self.calculatePrice = function(){
        var price = 0;
        Array.prototype.forEach.call(document.querySelectorAll("input:checked+label>.price"), function(el){
            price += parseFloat(el.textContent);
        });
        var full = document.getElementById("full-price");
        if(full) full.textContent = price+"";
        return price;
    };

    self.initRegistration = function(){
        var form = document.querySelector("#registration form");
        var pubkey = document.querySelector('head [name=stripe-public-key]').getAttribute("content");
        var stripe = Stripe(pubkey);
        var elements = stripe.elements();

        Array.prototype.forEach.call(form.querySelectorAll('input'), function(input) {
            input.addEventListener('focus', function() {
                input.classList.add('focused');
            });
            input.addEventListener('blur', function() {
                input.classList.remove('focused');
            });
            var testEmpty = function(){
                if (input.value.length === 0) {
                    input.classList.add('empty');
                } else {
                    input.classList.remove('empty');
                }
            };
            input.addEventListener('keyup', testEmpty);
            input.addEventListener('change', self.calculatePrice);
            testEmpty();
        });

        var elementClasses = {
            focus: 'focused',
            empty: 'empty',
            invalid: 'invalid',
        };

        var elementStyles = {
            base: {
                fontSize: '18px',
                color: '#000',
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
                if(event.error){
                    self.showFailure(event.error.message);
                }else{
                    self.hideFailure();
                }
            });
            return element;
        };

        var card = createElement('cardNumber', form.querySelector("#card-number"));
        createElement('cardExpiry', form.querySelector("#card-expiry"));
        createElement('cardCvc', form.querySelector("#card-cvc"));

        form.addEventListener('submit', function(event) {
            self.log("Received registration submit, creating token.");
            event.preventDefault();

            var items = Array.prototype.slice.call(form.querySelectorAll("[name=item]"))
                .filter(function(item){ return item.checked; })
                .map(function(item){ return item.value; });
            var payment = form.querySelector("[name=payment]:checked").value;

            if(form.querySelector(".kind input:checked").length == 0){
                self.showFailure("Please select an attendance kind."); return;}
            if(form.querySelector("#name").value == ""){
                self.showFailure("Please enter a name."); return;}
            if(form.querySelector("#email").value == ""){
                self.showFailure("Please enter an email address."); return;}

            var data = {
                name: form.querySelector("#name").value,
                email: form.querySelector("#email").value,
                affiliation: form.querySelector("#affiliation").value,
                foodRestrictions: form.querySelector("#food-restrictions").value,
                items: items,
                price: self.calculatePrice()
            };

            var failPayment = function(e){
                self.log("Payment failed.", e);
                self.showFailure((e=="")? "Registration failed." : e);
            };

            var confirmPayment = function(data){
                data["action"] = "confirm";
                self.request(form.getAttribute("action"), data, function(response){
                    self.log("Payment confirmed.");
                    self.showSuccess("Registration complete! You should receive an email receipt shortly.");
                }, failPayment);
            };

            var requestPayment = function(data){
                data["action"] = "request";
                self.request(form.getAttribute("action"), data, function(response){
                    try{ response = JSON.parse(response); }
                    catch(e){ response = {error: e}; }
                    if(response.error){
                        self.showFailure(response.error);
                    }else if(response.status == "requires_action"){
                        self.log("Payment requires action...");
                        stripe.handleCardAction(
                            response.payment_intent_client_secret
                        ).then(function(result){
                            if(result.error){
                                self.log("Payment request failed:", result);
                                self.showFailure(result.error.message);
                            } else {
                                self.log("Payment request successful.");
                                data["token"] = result.paymentIntent.id;
                                confirmPayment(data);
                            }
                        });
                    }else if(response.status == "succeeded"){
                        self.log("Payment confirmed.");
                        self.showSuccess("Registration complete! You should receive an email receipt shortly.");
                    }
                }, failPayment);
            };

            self.busy();
            switch(payment){
            case "stripe":
                stripe.createPaymentMethod(
                    'card', card, {billing_details: {
                        name: data.name,
                        email: data.email
                    }})
                .then(function(result) {
                    if (result.error) {
                        self.log("Token creation failed:",result);
                        self.showFailure(result.error.message);
                    } else {
                        self.log("Token creation successful:",result.paymentMethod.id);
                        data["token"] = result.paymentMethod.id;
                        requestPayment(data);
                    }
                });
                break;
            case "bank":
                data["token"] = "bank";
                confirmPayment(data);
                break;
            default:
                self.showFailure("Please choose a payment option.");
            }
        });
    };

    self.decorateBackground = function(num){
        var rand = function(n){return Math.random()*n;};

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
    };

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
    };
};

var els = new ELS();
document.addEventListener('DOMContentLoaded', els.init, false);
