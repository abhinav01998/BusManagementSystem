package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Abhinav Thakur
 */
@Entity
public class User {
    @Id
    private String Username = new String();
    private String pwd = new String(); 
    private String AccType = new String();

    public String getAccType() {
        return AccType;
    }

    public void setAccType(String AccType) {
        this.AccType = AccType;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }
    public String toString(){
        return this.Username+" "+this.pwd;
    }
   /* public boolean equals(){
        User u = (User) o;
        if(uname.equals(u.getUname()))
    }*/
}
