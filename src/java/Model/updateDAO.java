/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Abhinav Thakur
 */
public class updateDAO {
       public boolean insert(String username,String email,String password,String phone,String city){
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
