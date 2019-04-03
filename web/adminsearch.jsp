<%-- 
    Document   : search
    Created on : Feb 19, 2019, 11:06:58 PM
    Author     : Abhinav Thakur
--%>

<%@page import="java.util.List"%>
<%@page import="Model.busdata"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="dblogin.privacy"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search For the route or driver</title>
        <link rel="stylesheet" href="css/searchcss.css"/>
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
                 font-family: times-new-roman;
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
    .srchbar{
        margin-left: 400px;
        margin-top: 150px;
    }
    input[type=textbox]{
        padding: 10px 20px;
        margin-right: 10px;
        width: 40%;
        border-radius: 10px;
        box-shadow: 0px 10px 15px black;
    }
    .sbmt{
        padding:10px 30px;
        border-radius: 10px;
        cursor: pointer;
        box-shadow: 0px 10px 15px black;
        
    }
       button:focus {outline:0;}
       .hdr{
    position: relative;
      border: 1px solid black;
      border-radius: 8px;
      width: 100%;
      margin-bottom: 15px;
      text-align: center;
      box-sizing: border-box;
      background-color: lightgrey;
      box-shadow: -10px 10px 20px grey;
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
    </head>
    <body>
          <div class="main">
            
            <div class="navbar">
           <a href="AdminHome.jsp">DashBoard</a>
           <a href="ShowStudData">Time Table</a>
            <a href="adminsearch.jsp" class="active">Search</a>
            <a href="adminprofile.jsp">Profile</a>
            <a href="Students">Students List</a>
            <a href="Faculty">Faculty List</a>
            <h3><span style="float:right;margin-left: 610px;font-size: 17px;margin-top: 4px;">Admin:  <span style="color: blue;"><%=
                session.getAttribute("username").toString()
                %></span></span></h3>
            </div>
             <div class="srchbar">
                 <h3>Search For the Bus no: </h3><br>
                 <br>
                 <form action="AdminSearch">
                 <input type="textbox" name="busno">
                 <button class="sbmt"><i class="fa fa-search"></i></button>
                 </form>
             </div>
              <div class="tbl">
                 
                   <%
                List <busdata> list = (List<busdata>)request.getSession().getAttribute("list");
                
               try
                {
                    if(list==null){
                    }
                    else{
                   %>
                          <table style='margin: auto; margin-top: 100px; border: 1px solid black;'>
                  <tr>  
                  <th>Bus No.</th>
                  <th>Driver name</th>
                  <th>Driver contact</th>
                  <th>Start point</th>
                  <th>Destination</th>
                  </tr>
                  <%
                        for(busdata display : list){
                      %>
                      <tr>
                          <td><%out.println(display.getBusno());%></td>                         
                          <td><%out.println(display.getDname());%></td>
                          <td><%out.println(display.getDphone());%></td>
                          <td><%out.println(display.getStartpt());%></td>
                          <td><%out.println(display.getDestination());%></td>
                         <!-- <td><a href="">EDIT</a> </td>-->
                      </tr>
                      <% 
}
}
}catch(Exception e){
  System.out.println(e);
}

%> 
                   </table>
              </div>
        </div>
    </body>
</html>
