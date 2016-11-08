var decodeEmails = function(){
    var elements = document.getElementsByClassName("encoded-email");
    for(var i=0; i<elements.length; i++){
        var element = elements[i];
        var args = element.dataset.email.split(",");
        var email = "";
        for(var j=1; j<args.length; j++){
            email.push(args[0][args[j]]);
        }
        element.href = "mailto:"+email;
        element.textContent = email;
    }
};
document.addEventListener('DOMContentLoaded', decodeEmails, false);
