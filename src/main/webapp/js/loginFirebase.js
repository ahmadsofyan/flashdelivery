var emailLogin = document.getElementById("emailLogin");
var passLogin = document.getElementById("passLogin");

var loginBtn = document.getElementById("loginBtn");

loginBtn.addEventListener("click", function() {
    var email = emailLogin.value;
    var password = passLogin.value;

    firebase.auth().signInWithEmailAndPassword(email, password)
    .then(function() {

        alert("Login Berhasil");

        window.location.replace("berandaAdmin.jsp");
    }).catch(function(error) {
        // Handle Errors here.
        var errorCode = error.code;
        var errorMessage = error.message;
        // ...
      });
      
});