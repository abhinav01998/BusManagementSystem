<%--
    Document   : loginpage
    Created on : Jan 17, 2019, 10:56:37 AM
    Author     : Abhinav Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
        <style>
          .div1{
           width:100%;
	   margin:auto;
	   max-width:525px;
	   min-height:600px;
	   position:relative;
	   box-shadow:0px 10px 15px black;
           border-radius: 10px;
           background-color: lightgrey;
           opacity: 0;
           animation-name: loginn;
           animation-duration: 3s;
           animation-fill-mode: forwards;
        }
        @keyframes loginn {
           0%{
             opacity: 0;
           }
           100%{
             opacity: 0.85;
           }
        }
        h2{
            font-size: 170%;
            font-family: Open Sans;
            margin-top: 20px;
        }
        #ma{
            border-radius: 15px;
            padding-left: 10px;
            padding-right: 50%;
            padding-top: 10px;
            padding-bottom: 10px;
            margin-left: 50px;
            margin-bottom: 10px;
            font-family: Open Sans;
        }
        #subm{
            border-radius: 15px;
            padding-left: 30px;
            padding-right: 30px;
            padding-top: 10px;
            padding-bottom: 10px;
            margin-left: 40%;
            margin-bottom: 10px;
            cursor: pointer;
        }
        #subm:hover{
            box-shadow: 0px 0px 15px black;
        }
        .div2{
          background-image: url("busbackground.jpg");
          height: 100vh;
          background-size: cover;
          background-position: center;
          overflow: hidden;
        }
        body{
          margin: 0;
        }
        .titl{
          margin-left: 31%;
          padding-top: 20px;
        }  
        </style>
    </head>
    <body>
        <div class="div2">
        <div class="div1">
            <h2 class="titl">Login page</h2>
            <hr>
            <form action="logServlet" method="post">
            <h3 id="ma">Username: </h3>
            <input type="text" placeholder="enter name here" name="name" id="ma">
            <h3 id="ma">Password: </h3>
            <input type="password" placeholder="enter password here" name="passwd" id="ma"><br>
            <h3 id="ma">Account Type: </h3>
            <select id = "ma" name = "acctype">
                <option value = "admin" id = "ma">Admin</option>
                <option value = "student" id = "ma">Student</option>
                <option value = "faculty" id = "ma">Faculty</option>
            </select><br>
            <br><button type="submit" id="subm">Login</button>
            </form>
        </div>
        </div>
    </body>
</html>
