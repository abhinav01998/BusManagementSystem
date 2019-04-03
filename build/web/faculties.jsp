<%-- 
    Document   : students
    Created on : Feb 25, 2019, 1:05:07 AM
    Author     : Abhinav Thakur
--%>

<%@page import="Model.users"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View And Edit Students Data</title>
        <link rel="stylesheet" href="css/PageCss.css"/>
    </head>
        <style>
            body{
                margin: 0;
                 background-image: url("bcgd.jpg");
                 background-size: cover;
                 background-position: center;
                 overflow: scroll;
                 height: 100vh;
            }
            .main{
        /*  height: 100vh;*/
          position: absolute;
          margin: 5px;
          height: 100%;
          width: 100%;
            }
             .navbar{
        top: 0;
        display: flex;
        position: fixed;
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
    table, th, td{
        border: 1px solid black;
        margin: auto;
        margin-top: 50px;
        height: 50px;
        width: 300px;
        color: white;
        background: rgb(0, 0, 0, 0.5);
    }
    th, td{
        padding: 20px;
    }
        </style>
    <body>
        <div class="main">
            
            <div class="navbar">
            <a href="AdminHome.jsp">DashBoard</a>
            <a href="Timetable.jsp">Time Table</a>
            <a href="adminsearch.jsp">Search</a>
            <a href="adminprofile.jsp">Profile</a>
            <a href="Students">Students List</a>
            <a href="Faculty" class="active">Faculty List</a>
             <h3><span style="float:right;margin-left: 610px;font-size: 17px;margin-top: 4px;">Admin:  <span style="color: blue;"><%=
                session.getAttribute("username").toString()
                %></span></span></h3>
            </div>
             <div style="margin-left:45%; margin-top: 100px;"><a style="background-color: blue; padding: 15px; color: white;border-radius: 10px; margin-right: 10px;background: rgb(0, 0, 0, 0.5);" href="addfaculty.jsp">+  Add Faculty</a></div>
            <div>
                 <table style='margin: auto; margin-top: 100px;'>
                  <tr>  
                  <th>Username</th>
                  <th>Password</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>City</th>
                  <th></th>
                  </tr>
                  
                 <%
                List <users> list = (List<users>)request.getSession().getAttribute("list");
                
                for(users disp : list)
                {
                      %>
                      <tr>
                          <td><%=disp.getUsername()%></td>                         
                          <td><%=disp.getPassword()%></td>
                          <td><%=disp.getEmail()%></td>
                          <td><%=disp.getPhone()%></td>
                          <td><%=disp.getCity()%></td>
                           <td><%
                            
    out.println("<a  href='DropFacultyAdmin?facultydrop="+disp.getUsername()+"'>Remove</a>");
 
%></td> 
                      </tr>
                      <% 
}

%> 
</div>
            
    </body>
</html>

