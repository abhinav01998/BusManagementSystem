<%-- 
    Document   : facultyprofile
    Created on : Feb 25, 2019, 12:40:32 AM
    Author     : Abhinav Thakur
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Profile</title>
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
            <a href="FacultyHome.jsp">DashBoard</a>
            <a href="ShowFacultyData">Time Table</a>
            <a href="facultysearch.jsp" class="active">Search</a>
            <a href="facultyprofile.jsp">Profile</a>
            <a href="StudFaculty">Students List</a>
             <h3><span style="float:right;margin-left: 610px;font-size: 17px;margin-top: 4px;">Faculty:  <span style="color: blue;"><%=
                session.getAttribute("username").toString()
                %></span></span></h3>
            </div>
             <div class="parallax"></div>
             <div class="stddata">
                 <h2 style='text-align:center;'>Faculty's Data</h2>
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
                 <h2 style='text-align:center;'>Update Faculty Data: </h2>
                 <form>
                     <table style='margin: auto;'>
                         <tr>
                             <td>Username: </td>
                             <td><input type="text" placeholder='Enter username here'></td>
                         </tr>
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
                             <td></td>
                             <td><button class='btn'>Update</button></td>
                         </tr>
                     </table>
                 </form>
             </div>
            </div>
    </body>
</html>
