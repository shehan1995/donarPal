/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin
 */
public class JDBC {

    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/msd_project";
    Connection con;

    Connection getConnection() throws Exception {

        Class.forName(driver);
        con = DriverManager.getConnection(url, "root", "1234");

        return con;
    }
    //this method is to save vales in DB

    public void setValues(String sql) throws Exception {
      
            Statement state = getConnection().createStatement();
            state.executeUpdate(sql);
     
    }
//to get values from DB
    public ResultSet getValues(String sql) throws Exception {
        Statement state = getConnection().createStatement();
        ResultSet rset = state.executeQuery(sql);
        return rset;
    }
}


