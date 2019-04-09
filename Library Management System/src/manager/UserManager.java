package manager;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Beans.UserBean;
import Connector.MySqlConnector;

public class UserManager {

	public static Boolean addUser(UserBean userbean) {
		
		String query= "INSERT INTO `llibrary`.`user_table` (`first_name`, `last_name`, `User_Email`,`password`) VALUES ('"+userbean.getFirstName()+"','"+userbean.getLastName()+"','"+userbean.getEmail()+"', '"+userbean.getPassword()+"')";
        return  MySqlConnector.executePreparedQuery(query);
		
	}
	
	 public static boolean IsValidUser(UserBean bean){
		 System.out.println("Now query will go to MyConnector");
		    String query= "select * from user_table where User_Email='"+bean.getEmail()+"' and password='"+ bean.getPassword()+"'";

		        return  MySqlConnector.GetUserDetails(query);
		      
		    }
	 
	 public static UserBean getUserDetailsByEmail(String uname){
	        try {
	            
	           String q = "select * from user_table where User_Email ='"+uname
	                   +"'";
	           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
	            if(rs.next()){
	                 UserBean b = new UserBean();
	                
	                b.setFirstName(rs.getString("first_name"));
	                b.setLastName(rs.getString("last_name"));
	                b.setEmail(rs.getString("User_Email"));
	                b.setPassword(rs.getString("password"));
	                b.setDepartment(rs.getString("department"));
	                b.setAddress(rs.getString("User_Address"));
	                b.setMobile(rs.getString("User_Mobile"));
	                
	                return b; 
	            }
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return null;
	    }
	 
	 public static List<UserBean> getAllUsers(){
		 List<UserBean> list = new ArrayList<>();
	        try {
	            
	           String q = "select * from user_table";
	                
	           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
	            while(rs.next()){
	                 UserBean b = new UserBean();
	                
	                b.setFirstName(rs.getString("first_name"));
	                b.setLastName(rs.getString("last_name"));
	                b.setEmail(rs.getString("User_Email"));
	                b.setPassword(rs.getString("password"));
	                b.setDepartment(rs.getString("department"));
	                b.setMobile(rs.getString("User_Mobile"));
	               b.setAddress(rs.getString("User_Address"));
	                
	                
	                list.add(b);
	            }
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return list; 
	    }

}
