package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Abhinav Thakur
 */
@Entity
public class busdata {
    @Id
    private String busno;
    private String dname;
    private String dphone;
    private String startpt;
    private String destination;
    
   /* public busdata(){}
    
    public busdata(int busno,String dname,String dphone,String startpt,String destination){
        this.busno = busno;
        this.dname = dname;
        this.dphone = dphone;
        this.startpt = startpt;
        this.destination = destination;
    }*/

    public String getBusno() {
        return busno;
    }

    public void setBusno(String busno) {
        this.busno = busno;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getDphone() {
        return dphone;
    }

    public void setDphone(String dphone) {
        this.dphone = dphone;
    }

    public String getStartpt() {
        return startpt;
    }

    public void setStartpt(String startpt) {
        this.startpt = startpt;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }
    
}
