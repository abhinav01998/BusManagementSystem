package Model;

/**
 *
 * @author Abhinav Thakur
 */
public class User {
    private String Username = new String();
    private String pwd = new String(); 

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
}
