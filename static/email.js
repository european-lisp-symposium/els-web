var decodeEmails = function(){
    var elements = document.getElementsByClassName("encoded-email");
    for(var i=0; i<elements.length; i++){
        var element = elements[i];
        var args = element.dataset.email.split(",");
        var email_parts = [];
        var email = "";
        for(var j=1; j<args.length; j++){
            email_parts[args[j]] = args[0][j-1];
        }
        for(var j=0; j<email_parts.length; j++){
            email = email + email_parts[j];
        }
        element.href = "mailto:"+email;
        element.textContent = email;
    }
};
document.addEventListener('DOMContentLoaded', decodeEmails, false);
