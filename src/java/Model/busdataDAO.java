package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Abhinav Thakur
 */
public class busdataDAO {
     public boolean insert(String num,String dname,String dphone,String startpt,String destination){
        busdata csd = new busdata();
        csd.setBusno(num);
        csd.setDname(dname);
        csd.setDphone(dphone);
        csd.setStartpt(startpt);
        csd.setDestination(destination);
        Configuration cf= null;
        SessionFactory sf= null;
        Session session = null;
        try{
        cf = new Configuration();
        cf.configure("cfg/hibernate.cfg.xml");
        sf = cf.buildSessionFactory();
        session = sf.openSession();
        Transaction tr = session.beginTransaction();
        session.save(csd);
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
