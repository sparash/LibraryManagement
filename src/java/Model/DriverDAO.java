/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author DELL
 */
public class DriverDAO {
    public void addDriver(Driver d)
    {
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        Driver theOne=d;
        try {
            cf=new Configuration();
            cf.configure();
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx= session.beginTransaction();
            session.save(theOne);
            tx.commit();
            System.out.println("Added new driver");
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        finally {
            session.close();
            sf.close();
        }
    }
    public List<Driver> getDriver()
    {
        String st="from Driver";
        List<Driver> list=null;
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        
        try {
            cf=new Configuration();
            cf.configure();
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx= session.beginTransaction();
            Query query1=session.createQuery(st);
            list=query1.list();
            tx.commit();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        finally {
            session.close();
            sf.close();
        }
        return list;
    }
    
    public void deleteDriver(String name)
    {
        String st="delete from Driver where name= :n";
//        List<Bus> list=null;
        Configuration cf=null;
        SessionFactory sf=null;
        Session session=null;
        
        try {
            cf=new Configuration();
            cf.configure();
            sf=cf.buildSessionFactory();
            session=sf.openSession();
            Transaction tx= session.beginTransaction();
            Query query1=session.createQuery(st);
            query1.setParameter("n", name);
            query1.executeUpdate();
            tx.commit();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        finally {
            session.close();
            sf.close();
        }
        
    }
}
