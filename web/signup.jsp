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
    </head>
    <script>
        
    </script>
    <body>
        <div class="div2">
        <div class="div1">
            <h2 class="titl">Sign Up Page</h2>
            <hr>
            <form action="SignnServlet" method="post" onsubmit="return pass()">
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
        </div>
        </div>
    </body>
</html>
