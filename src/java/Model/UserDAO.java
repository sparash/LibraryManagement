/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author DELL
 */
public class UserDAO {
    public boolean check(User u)
    {
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        User db_user = null;
        try {
            cf = new Configuration();
            cf.configure();
            
            sf= cf.buildSessionFactory();
            session=sf.openSession();
            
            db_user=(User)session.get(User.class,u.getEmail());
            System.out.println(u.getEmail());
            System.out.println(db_user);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        finally {
            session.close();
            sf.close();
        }
        if(db_user == null) return false;
        else {
            System.out.println(db_user.getEmail()+" "+u.getEmail());
            System.out.println(db_user.getPwd()+" "+u.getPwd());
            //System.out.println(db_user.getType()+" "+u.getType());
            return db_user.equals(u);
        }
    }
}
