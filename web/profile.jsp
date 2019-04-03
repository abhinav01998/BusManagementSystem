<%-- 
    Document   : Contact
    Created on : Feb 19, 2019, 11:07:24 PM
    Author     : Abhinav Thakur
--%>

<%@page import="Model.users"%>
<%@page import="java.util.List"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Profile</title>
        <link rel="stylesheet" href="css/PageCss.css"/>
        <style>
            body{
                margin: 0;
            }
            
        .parallax{
          background-image:url(bcgd.jpg);
          min-height:200px;
          background-attachment : fixed;
          background-position : center;
          background-repeat : no-repeat;
          background-size : cover;
        }
        .navbar{
        top: 0;
        display: flex;
        position: fixed;
        background-color: blue;
        border-radius: 8px;
        width: 100%;
        margin-left: 5px;
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
    .stddata{
        padding: 40px;
        margin: 10px;
        background-image: url('databg.jpg');
    }
    .updatedata{
        padding: 40px;
        margin: 10px;
        background-image: url('databg.jpg');
        background-position : center;
          background-repeat : no-repeat;
          background-size : cover;
    }
    table, th, td{
        padding: 10px;
        font-size: 110%;
    }
    .btn{
        padding:5px 15px;
        border-radius: 10px;
        cursor: pointer;
        box-shadow: 0px 10px 15px black;
    }
    input{
        border-radius: 10px;
        padding: 5px 10px;
        box-shadow: 0px 10px 15px black;
    }
        </style>
    </head>
    <body>
            <div class='main'>
            <div class="navbar">
            <a href="StudentHome.jsp">DashBoard</a>
            <a href="FetchData">Time Table</a>
            <a href="search.jsp">Search</a>
            <a href="StudData" class="active">Profile</a>
            </div>
             <div class="parallax"></div>
             <div class="stddata">
                 <h2 style='text-align:center;'>Student's Data</h2>
                 <table style='margin-left: 350px;'>
                      <%
                String usr = request.getSession().getAttribute("username").toString();
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/busmanagementsystem?useSSL=false";
                String username="root";
                String password="Abhi123@";
                String query="select * from users where username='"+usr+"'";
               Connection conn=DriverManager.getConnection(url, username, password);
               Statement stmt=conn.createStatement();
               ResultSet rs=stmt.executeQuery(query);
                while(rs.next())
                {
                      %>
                      <tr>
                          <td>Username: </td>
                          <td><%=rs.getString("username")%></td>
                      </tr>
                      <tr>
                          <td>Email: </td>
                          <td><%=rs.getString("email")%></td>
                      </tr>
                      <tr>
                          <td>Phone: </td>
                          <td><%=rs.getString("phone")%></td>
                      </tr>
                      <tr>
                          <td>City: </td>
                          <td><%=rs.getString("city")%></td>
                      </tr>
                      <% 
}

%>    
                     
                 </table>
             </div>
             <div class="parallax"></div>
             <div class="updatedata">
                 <h2 style='text-align:center;'>Update Student Data: </h2>
                 <form action="Updatestu">
                     <table style='margin: auto;'>
                         <tr>
                             <td>email: </td>
                             <td><input type="email" placeholder='Enter Email here'></td>
                         </tr>
                         <tr>
                             <td>Phone: </td>
                             <td><input type="text" placeholder='Enter Contact Number here'></td>
                         </tr>
                         <tr>
                             <td>City: </td>
                             <td><input type="text" placeholder='Enter City Name here'></td>
                         </tr>
                         <tr>
                             <td>Password: </td>
                             <td><input type="text" placeholder='Enter New Password here'></td>
                         </tr>
                         <tr>
                             <td></td>
                             <td><button class='btn'>Update</button></td>
                         </tr>
                     </table>
                 </form>
             </div>
            </div>
    </body>
</html>
