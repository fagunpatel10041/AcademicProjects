/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package manager;


import bean.UserBean;
import connector.MySqlConnector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserManager {
    public static boolean addUser(UserBean bean){
    	
    	System.out.println("In Add Manager");

        String query= "INSERT INTO `deal-with-wheels`.`user_table` (`first_name`, `last_name`, `email`, `password`, `phone`, `gender`, `dob`, `address_line1`, `address_line2`, `city_id`, `area_id`, `user_is_active`, `date_of_insertion`, `security_question_id`, `security_question_ans`, `user_type`) VALUES ('"+bean.getFname()+"', '"+bean.getLname()+"', '"+bean.getEmail()+"', '"+bean.getPassword()+"', '"+bean.getPhone()+"', '"+bean.getGender()+"', '"+bean.getDob()+"', '"+bean.getAdd1()+"', '"+bean.getAdd2()+"', '"+bean.getCityid()+"', '"+bean.getAreaid()+"', '1', '"+bean.getDate_of_insertion()+"', '"+bean.getSecurity_question_id()+"', '"+bean.getSecurity_question_answer()+"', '"+bean.getUtype()+"')";
        return  MySqlConnector.executePreparedQuery(query);
      
    }
    
    
     public static UserBean getUserDetailsByEmail(String uname){
        try {
            
           String q = "select * from user_table where email ='"+uname
                   +"'";
           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
            if(rs.next()){
                 UserBean b = new UserBean();
                
                b.setFname(rs.getString("first_name"));
                b.setLname(rs.getString("last_name"));
                b.setEmail(rs.getString("email"));
                b.setPassword(rs.getString("password"));
                b.setPhone(rs.getString("phone"));
                b.setCityid(rs.getString("city_id"));
                b.setAreaid(rs.getString("area_id"));
                b.setDob(rs.getString("dob"));
                b.setGender(rs.getString("gender"));
                b.setAdd1(rs.getString("address_line1"));
                b.setAdd2(rs.getString("address_line2"));
                b.setSecurity_question_id(rs.getString("security_question_id"));
                b.setSecurity_question_answer(rs.getString("security_question_ans"));
                b.setUtype(rs.getString("user_type"));
                b.setIs_Active(rs.getString("user_is_active"));
                b.setDate_of_insertion(rs.getString("date_of_insertion"));
                return b;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public static boolean IsValidUser(UserBean bean){
    	System.out.println("In Validate Class");
    String query= "select * from user_table where email='"+bean.getEmail()+"' and password='"+ bean.getPassword()+"'";

        return  MySqlConnector.GetUserDetails(query);
      
    }
    
    
    public void deleteUser()
    {
        
        
    }
    public static List<UserBean> getUserList(){
        List<UserBean> list = new ArrayList<>();
        try {
            
            String q = "select * from user_table";
            //step1- step2
            MySqlConnector.getConnection();
            //step3- step4
            ResultSet rs = MySqlConnector.executeQueryAndGetResultset(q);
            
            while (rs.next()) {  
                UserBean b = new UserBean();
                b.setUserid(rs.getInt("user_id"));
                b.setFname(rs.getString("first_name"));
                b.setLname(rs.getString("last_name"));
                b.setEmail(rs.getString("email"));
                b.setPassword(rs.getString("password"));
                b.setPhone(rs.getString("phone"));
                b.setCityid(rs.getString("city_id"));
                b.setAreaid(rs.getString("area_id"));
                b.setDob(rs.getString("dob"));
                b.setGender(rs.getString("gender"));
                b.setAdd1(rs.getString("address_line1"));
                b.setAdd2(rs.getString("address_line2"));
                b.setSecurity_question_id(rs.getString("security_question_id"));
                b.setSecurity_question_answer(rs.getString("security_question_ans"));
                b.setUtype(rs.getString("user_type"));
                
                list.add(b);
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UserManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
