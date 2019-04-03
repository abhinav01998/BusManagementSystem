package Model;

/**
 *
 * @author Abhinav Thakur
 */
public class Login {
    private String username;
    private String password;
    private String acctype;

    public Login(){}
    
    public Login(String username,String password,String acctype){
        this.username = username;
        this.password = password;
        this.acctype = acctype;
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAcctype() {
        return acctype;
    }

    public void setAcctype(String acctype) {
        this.acctype = acctype;
    }
    
    
    public boolean equals(Object o){
        Login g = (Login) o;
        if(this.username == g.getUsername() && (this.password.equals(g.getPassword())) && (this.acctype.equals(g.getAcctype()))){
            return true;
        }
        else{
            return false;
        }
    }
}
