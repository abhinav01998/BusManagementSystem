<%-- 
    Document   : jdbc_data
    Created on : Mar 31, 2019, 11:01:45 AM
    Author     : Abhinav Thakur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
          <%
          
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
String url="jdbc:mysql://localhost/busmanagementsystem?useSSL=false";
String query="select * from busdata";
Connection conn=DriverManager.getConnection(url,privacy.uname,privacy.password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><%=rs.getInt("bus_no") %></td>
    <td><%=rs.getString("driver_name") %></td>
    <td><%=rs.getString("driver_phone") %></td>
    <td><%=rs.getString("start_pt") %></td>
    <td><%=rs.getString("destination") %></td></tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    
    }
catch(Exception e)
{
    e.printStackTrace();
    }



%>
      
    </body>
</html>

out.println("<a  href='DropStudentData?nodrop="+disp.getBusno()+"&namedrop="+disp.getDname()+"&phonedrop="+disp.getDphone()+"'>Remove account</a>");*/
 
<span style="float:right;margin-right: 20px;font-size: 20px;margin-top: 10px;">Welcome <span style="color: blue;"><%=
                session.getAttribute("username").toString()
                %></span></span>