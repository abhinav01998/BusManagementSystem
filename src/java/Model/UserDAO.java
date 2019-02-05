package Model;

import dblogin.privacy;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDAO {
     public boolean check(User u) throws ClassNotFoundException{
        boolean flag = false; 
        try{
            String url = "jdbc:mysql://localhost:3306/busmanagementsystem?useSSL=false&allowPublicKeyRetrieval=true&verifyServerCertificate=false&allowMultiQueries=true";
            String uname=privacy.uname;
            String pwd = privacy.password;
             Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,uname,pwd);
            
            Statement stmt = conn.createStatement();
            
            String qr = "Select * from users where username ='"+u.getUsername()+"'&& password ='"+u.getPwd()+"';";
            
            ResultSet rs = stmt.executeQuery(qr);
            
            flag = rs.next();
            
            conn.close();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
        return flag;
    }
}
