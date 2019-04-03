<%-- 
    Document   : insertdata.jsp
    Created on : Feb 24, 2019, 7:51:32 PM
    Author     : Abhinav Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserting Data to Bus Table</title>
        <link rel="stylesheet" href="css/PageCss.css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    .navbar{
        top: 0;
        display: flex;
        background-color: blue;
        border-radius: 8px;
        width: 100%;
        background-color: lightblue;
        opacity: 0.85;
        box-shadow: -10px 10px 20px black;
    }
    .navbar a{
      color: black;
      text-decoration: none;
      padding: 12px 14px;
      font-size: 110%;
    }
    .navbar a:hover{
      background-color: lightgrey;
      color: black;
    }
    .active{
        background-color: grey;
        opacity: 0.85;
    }
    .insrt{
        
    }
    </style>
    </head>
    <body>
         <div class="main">
            <div class="navbar">
            <a href="FacultyHome.jsp">DashBoard</a>
            <a href="Timetable.jsp">Time Table</a>
            <a href="search.jsp">Search</a>
            <a href="insertdata.jsp" class="active">Insert Data</a>
            <a href="deletedata.jsp">Delete Data</a>
            </div>
            <div class="insrt">
                 
            </div>
        </div>
    </body>
</html>
