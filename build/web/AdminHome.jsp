<%-- 
    Document   : StudentHome
    Created on : Feb 13, 2019, 11:10:13 PM
    Author     : Abhinav Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
        <link rel="stylesheet" href="css/PageCss.css"/>
        <style>
            body{
                margin: 0;
                 background-image: url("bcgd.jpg");
                 background-size: cover;
                 background-position: center;
                 overflow: hidden;
                 height: 100vh;
            }
            .main{
          height: 100vh;
          overflow: hidden;
          position: absolute;
          margin: 5px;
          width: 100%;
            }
             .horiz{
        position: relative;
        display: flex;
        flex-direction: column;
        border: 1px solid black;
        border-radius: 10px;
        margin: auto;
        margin-top: 50px;
        background-color: lightblue;
        opacity: 0.85;
        width: 40%;
        box-shadow: -10px 10px 20px black;
    }
    .horiz a{
      color: black;
      text-decoration: none;
      padding: 12px 14px;
      font-size: 150%;
    }
    .horiz a:hover{
      background-color: grey;
      color: black;
    }
    .meta{
        font-size: 15px;
    }
        </style>
    </head>
    <body>
        <div class="main">
        <div class="hdr">
            <h1><span style="margin-left:300px;">Bus Management System</span><span class='meta'>Administrator</span>
            <span style="float:right;margin-right: 20px;font-size: 20px;margin-top: 10px;">Welcome <span style="color: blue;"><%=
                session.getAttribute("username").toString()
                %></span></span>
                 <span style="float:right;margin-right: 10px;font-size: 20px;margin-top: 10px;"><button style="color: blue;"><a href="LogOutServlet">Logout</a></button></span>
            </h1>
        </div>
        <div class="horiz">
            <a href="ShowStudData">Time Table</a>
            <a href="adminsearch.jsp">Search</a>
            <a href="adminprofile.jsp">Profile</a>
            <a href="Students">Students List</a>
            <a href="Faculty">Faculty List</a>
        </div>
        </div>
    </body>
</html>
