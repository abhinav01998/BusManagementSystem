<%-- 
    Document   : Timetable
    Created on : Feb 19, 2019, 10:21:28 AM
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
        color: white;
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
            <a href="StudentHome.jsp">DashBoard</a>
            <a href="FetchData" class="active">Time Table</a>
            <a href="search.jsp">Search</a>
            <a href="StudData">Profile</a>
            </div>
            <div>
              <table style='margin: auto; margin-top: 100px;'>
                  <tr>  
                  <th>Bus No.</th>
                  <th>Driver name</th>
                  <th>Driver contact</th>
                  <th>Start point</th>
                  <th>Destination</th>
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
                        
                      </tr>
                      <% 
}

%>    
              </table>
            </div>
        </div>
    
</html>
