package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Abhinav Thakur
 */
public class usersDAO {
     public boolean insert(String email,String username,String password,String phone,String city){
        users usr = new users();
        usr.setEmail(email);
        usr.setUsername(username);
        usr.setPassword(password);
        usr.setPhone(phone);
        usr.setAcctype("student");
        usr.setCity(city);
        Configuration cf= null;
        SessionFactory sf= null;
        Session session = null;
        try{
        cf = new Configuration();
        cf.configure("cfg/hibernate.cfg.xml");
        sf = cf.buildSessionFactory();
        session = sf.openSession();
        Transaction tr = session.beginTransaction();
        session.save(usr);
        tr.commit();
    }
        catch(Exception e){
            System.out.println(e);
            return false;
        }
        finally{
            session.close();
            sf.close();
            return true;
        }
}
}
