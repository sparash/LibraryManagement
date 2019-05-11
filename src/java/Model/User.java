/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author DELL
 */
@Entity
public class User {
    
    private String uname;
    @Id
    private String email;
    private String pwd;
    private String type;

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    

   
    @Override
    public int hashCode() {
        int z=Integer.parseInt(pwd);
        return z;
        
    }
    @Override
    public boolean equals(Object o) {
        User a=(User)o;
        return(email.equals(a.email)&&pwd.equals(a.pwd));
    }
    @Override
    public String toString() {
        return this.email;
    }
}
