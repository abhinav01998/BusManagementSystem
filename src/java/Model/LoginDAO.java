 package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Abhinav Thakur
 */
public class LoginDAO { 
     public boolean search(Login l){
     Login l1 = null;
        Configuration cf = new Configuration();
        cf.configure("cfg/hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s=sf.openSession();
        l1=(Login)s.get(Login.class, l.getUsername());
        
        s.close();
        sf.close();
        if(l1 == null){
            return false;
        }else{
            if(l1.equals(l)){
                return true;
            }
            else{
                return false;
            }
        }
     }
}
