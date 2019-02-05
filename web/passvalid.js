function pass(){
    var pass1  = document.forms["registerform"]["psw"].value;
    var pass2  = document.forms["registerform"]["psw-repeat"].value;
    if(pass1!==pass2){
        alert("Passwords do not match,please refill");
        return false;
    }
}