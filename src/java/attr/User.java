/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package attr;

import java.sql.ResultSet;
import javax.swing.JOptionPane;
import util.JDBC;

/**
 *
 * @author Admin
 */
public class User {
    public String getPassword(String email,String password) throws Exception{
       //ResultSet rset = new JDBC().getValues("SELECT email,password FROM student WHERE email='" email "'");
        ResultSet rset=new JDBC().getValues("SELECT * FROM student WHERE email='"+email+"' AND password='"+password+"'" );
       
        if (rset.next()) {
            return "student";
        } else {
            ResultSet rset1=new JDBC().getValues("SELECT * FROM doner WHERE email='"+email+"' AND password='"+password+"'" );
            if(rset1.next()){
                return "doner";
            }else{
                ResultSet rset2=new JDBC().getValues("SELECT * FROM admin WHERE email='"+email+"' AND password='"+password+"'" );
                if(rset2.next()){
                    return "admin";
                }
            }
            return null;
        }
    }
    
    public String getName(String email,String password) throws Exception{
       //ResultSet rset = new JDBC().getValues("SELECT email,password FROM student WHERE email='" email "'");
        ResultSet rset=new JDBC().getValues("SELECT * FROM student WHERE email='"+email+"' AND password='"+password+"'" );
       
         if (rset.next()) {
            return rset.getString("fname");
        } else {
            ResultSet rset1=new JDBC().getValues("SELECT * FROM doner WHERE email='"+email+"' AND password='"+password+"'" );
            if(rset1.next()){
                return rset1.getString("fname");
            }else{
                ResultSet rset2=new JDBC().getValues("SELECT * FROM admin WHERE email='"+email+"' AND password='"+password+"'" );
                if(rset2.next()){
                    return rset2.getString("fname");
                }
            }
            return null;
        }
    }
    public String getEmail(String email,String password) throws Exception{
       //ResultSet rset = new JDBC().getValues("SELECT email,password FROM student WHERE email='" email "'");
        ResultSet rset=new JDBC().getValues("SELECT * FROM student WHERE email='"+email+"' AND password='"+password+"'" );
       
         if (rset.next()) {
            return rset.getString("email");
        } else {
            ResultSet rset1=new JDBC().getValues("SELECT * FROM doner WHERE email='"+email+"' AND password='"+password+"'" );
            if(rset1.next()){
                return rset1.getString("email");
            }else{
                ResultSet rset2=new JDBC().getValues("SELECT * FROM admin WHERE email='"+email+"' AND password='"+password+"'" );
                if(rset2.next()){
                    return rset2.getString("email");
                }
            }
            return null;
        }
    }
    public void setDoner(String fname,String lname,String email,String id,String address,String job,String password,String tp) throws Exception{
        String status="available";
  
new JDBC().setValues("INSERT INTO doner VALUES ('"+id+"','"+fname+"','"+lname+"','"+email+"','"+address+"','"+job+"','"+password+"','"+tp+"','"+status+"')");            
            

        }
 public void setStudent(String fname,String lname,String email,String gender,String id,String address,String school,String password,String tp,String img,String certif) throws Exception{
        String status="waiting";
  
new JDBC().setValues("INSERT INTO doner VALUES ('"+fname+"','"+lname+"','"+gender+"','"+email+"','"+id+"','"+tp+"','"+school+"','"+address+"','"+password+"','"+img+"','"+certif+"','"+status+"')");            
            

        }
       

    }

