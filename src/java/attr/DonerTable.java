/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package attr;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Vector;
import javax.swing.JOptionPane;
import util.JDBC;

/**
 *
 * @author Admin
 */
public class DonerTable {
    public ArrayList<ArrayList<String>> getDonations(String email) throws Exception{
        ResultSet rset=new JDBC().getValues("SELECT * FROM items WHERE donerEmail='"+email+"'");
        ArrayList<ArrayList<String>> donation = new ArrayList<ArrayList<String>>();
        int id=0;
        while (rset.next()) {
        id=rset.getInt("id");
      
            ResultSet rset1=new JDBC().getValues("SELECT * FROM doner_item WHERE itemId='id'");
              
            if (rset1.next()) {
                
                ArrayList<String> newRow = new ArrayList<String>();
                newRow.add(rset.getString("item_name"));
                newRow.add(rset.getString("categary"));
                newRow.add(rset.getString("qty"));
                newRow.add(rset1.getString("status"));
                newRow.add(rset1.getString("Description"));
                donation.add(newRow);
            }else{
            ArrayList<String> newRow1 = new ArrayList<String>();
            //JOptionPane.showMessageDialog(null, id);
                newRow1.add(rset.getString("item_name"));
                newRow1.add(rset.getString("categary"));
                newRow1.add(rset.getString("qty"));
                newRow1.add("not requested");
                newRow1.add("none");
                donation.add(newRow1);
                //JOptionPane.showMessageDialog(null, email);
            }
            
        }
        
        return donation;
    }
     public ArrayList<ArrayList<String>> getRequests(String email) throws Exception{
        ResultSet rset=new JDBC().getValues("SELECT * FROM doner_item WHERE studentEmail='"+email+"'");
        ArrayList<ArrayList<String>> donation = new ArrayList<ArrayList<String>>();
        int id=0;
        while (rset.next()) {
        id=rset.getInt("itemId");
      
            ResultSet rset1=new JDBC().getValues("SELECT * FROM item WHERE itemId='id'");
              
            if (rset1.next()) {
                
                ArrayList<String> newRow = new ArrayList<String>();
                newRow.add(rset1.getString("item_name"));
                newRow.add(rset1.getString("categary"));
                newRow.add(rset1.getString("qty"));
                newRow.add(rset.getString("status"));
                newRow.add(rset.getString("Description"));
                newRow.add(rset.getString("itemId"));
                donation.add(newRow);
            }
            
        }
        
        return donation;
    }
     public void setRequest(String id) throws Exception{
         int itemid=Integer.parseInt(id);
         new JDBC().setValues("INSERT INTO doner_item VALUES ('itemId')");
     }
}
