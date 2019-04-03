<%-- 
    Document   : admintime
    Created on : Apr 1, 2019, 8:00:50 AM
    Author     : Abhinav Thakur
--%>

<%@page import="Model.busdata"%>
<%@page import="Model.Login"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="dblogin.privacy"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time Table For Buses</title>
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
        color:white;
        background: rgb(0, 0, 0, 0.5);
    }
    th, td{
        padding: 20px;
    }
        </style>
    <body>
    </body>
        <div class="main">
            
            <div class="navbar">
           <a href="FacultyHome.jsp">DashBoard</a>
            <a href="ShowFacultyData" class="active">Time Table</a>
            <a href="facultysearch.jsp">Search</a>
            <a href="facultyprofile.jsp">Profile</a>
            <a href="StudFaculty">Student List</a>
             <h3><span style="float:right;margin-left: 610px;font-size: 17px;margin-top: 4px;">Faculty:  <span style="color: blue;"><%=
                session.getAttribute("username").toString()
                %></span></span></h3>
            </div>
              <div style="display: flex;margin-left: 150px;margin-top: 100px;">
                 <form action="AddBusDataFaculty">
                     <input type="text" name="busno" style="padding: 7px; margin-right: 10px" placeholder="Enter bus no.">  <input type="text" style="padding: 7px; margin-right: 10px" name="dname" placeholder="Enter Driver name">  <input type="text" style="padding: 7px; margin-right: 10px" name="dcontact" placeholder="Enter Driver Contact">   <input type="text" style="padding: 7px; margin-right: 10px" name="startpt" placeholder="Enter Start Point">   <input type="text" style="padding: 7px; margin-right: 10px" name="destination" placeholder="Enter Destination">   <input type="submit" value="Add" style=" color: white;
        background: rgb(0, 0, 0, 0.5);border-radius: 10px">
                 </form></div>
            <div>
              <table style='margin: auto; margin-top: 100px;'>
                  <tr>  
                  <th>Bus No.</th>
                  <th>Driver name</th>
                  <th>Driver contact</th>
                  <th>Start point</th>
                  <th>Destination</th>
                  <th></th>
                  </tr>
                  
                 <%
                List <busdata> list = (List<busdata>)request.getSession().getAttribute("list");
                
                for(busdata disp : list)
                {
                      %>
                      <tr>
                          <td><%=disp.getBusno()%></td>                         
                          <td><%=disp.getDname()%></td>
                          <td><%=disp.getDphone()%></td>
                          <td><%=disp.getStartpt()%></td>
                          <td><%=disp.getDestination()%></td>
                          <td><%
                            
    out.println("<a  href='DropBusDataFaculty?busnodrop="+disp.getBusno()+"'>Remove</a>");
 
%></td></td>
                         <!-- <td><a href="">EDIT</a> </td>-->
                      </tr>
                      <% 
}

%>    
               
            </div>
        </div>
</html>
