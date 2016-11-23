var ELS = function(){
    var self = this;

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

    self.updateProgramme = function(){
        
    }

    self.init = function(){
        self.decodeEmailElements();
        setInterval(self.updateProgramme, 1000);
    }
}

var els = new ELS();
document.addEventListener('DOMContentLoaded', els.init, false);
