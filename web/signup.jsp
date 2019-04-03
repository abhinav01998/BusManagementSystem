<%-- 
    Document   : signup
    Created on : Jan 28, 2019, 6:38:02 PM
    Author     : Abhinav Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <link rel="stylesheet" href="Sup.css"/>
        <style>
            .div2{
            background-image: url("busbackground.jpg");
            height: 100vh;
          background-size: cover;
          background-position: center;
          overflow: scroll;
            }
        </style>
    </head>
    <body>
        <div class="div2">
        <div class="div1">
            <h2 class="titl">Sign Up Page</h2>
            <hr>
            <form name ="signupform" action="SignnServlet" method="post" onsubmit="return myValidation()">
            <h3 id="ma">Email: </h3>
            <input type="email" placeholder="enter email here" name="email" id="ma">
            <h3 id="ma">Username: </h3>
            <input type="text" placeholder="enter name here" name="name" id="ma">
            <h3 id="ma">Password: </h3>
            <input type="password" placeholder="enter password here" name="passwd" id="ma"><br>
            <h3 id="ma">Re-enter Password: </h3>
            <input type="password" placeholder="enter password again" name="repasswd" id="ma">
            <h3 id="ma">Phone Number: </h3>
            <input type="text" placeholder="enter phone number here" name="phone" id="ma">
            <h3 id="ma">City: </h3>
            <input type="text" placeholder="enter city name here" name="city" id="ma">
            <br><button type="submit" id="subm">Sign Up</button>
            </form>
            <script type="text/javascript">
      function myValidation(){
        var value = document.forms["signupform"]["email"].value;
        var flag = true;
        if(value === ""){
          alert("Field 'Email' cannot be empty!");
          flag = false;
        }
        var value1 = document.forms["signupform"]["name"].value;
        if(value1 === ""){
          alert("Field 'Name' cannot be empty!");
          flag = false;
        }
        var value1 = document.forms["signupform"]["passwd"].value;
        if(value1 === ""){
          alert("Field 'Password' cannot be empty!");
          flag = false;
        }
        var value1 = document.forms["signupform"]["repasswd"].value;
        if(value1 === ""){
          alert("Please ReEnter the password to confirm!");
          flag = false;
        }
        var value1 = document.forms["signupform"]["city"].value;
        if(value1 === ""){
          alert("Field 'City' cannot be empty!");
          flag = false;
        }
        var value2 = document.forms["signupform"]["phone"].value;
        if(value2 === "" || isNaN(value2) || (value2 < 1 || value2>9999999999)){//Is Not a Number
          alert("Invalid Value for Contact!");
          flag = false;
        }
        var passvalue1 = document.forms["signupform"]["passwd"].value;
        var passvalue2 = document.forms["signupform"]["repasswd"].value;
        if(passvalue1 !== passvalue2){
            alert("Passwords Don't Match!");
            return false;
        }
        return flag;
      }
    </script>
        </div>
        </div>
    </body>
</html>
