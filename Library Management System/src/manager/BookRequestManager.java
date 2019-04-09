package manager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Beans.BookBean;
import Beans.RequestBookBean;
import Beans.UserBean;
import Connector.MySqlConnector;

public class BookRequestManager {

public static Boolean addBook(RequestBookBean bookbean) {
		
		String insert= "INSERT INTO `llibrary`.`book_request_table` (`book_name`, `url`, `note`,`user_email`) VALUES ('"+bookbean.getBook_name()+"', '"+bookbean.getUrl()+"', '"+bookbean.getNote()+"' , '"+bookbean.getUser()+"');";
		
		
		
	return MySqlConnector.executePreparedQuery(insert);
		
		
}

public static List<RequestBookBean> getAllRequestsByUser(String user){
	
	
	List<RequestBookBean> list = new ArrayList<>();
    try {
        
    	
    	
       String q = "SELECT * FROM llibrary.book_request_table WHERE user_email='"+user+"'";
               
       ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
        while(rs.next()){
        	
        	System.out.println("inside resultset loop");
        	
             RequestBookBean b = new RequestBookBean();
            
            b.setBook_name(rs.getString("book_name"));
            b.setUrl(rs.getString("url"));
            b.setNote(rs.getString("note"));
            b.setUser(rs.getString("user_email"));
            b.setR_id(rs.getInt("request_id"));
            
            list.add(b);
            System.out.println("add 1");
           
           
        }
        
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    return list;
}

public static List<RequestBookBean> getAllRequests(){
	
	List<RequestBookBean> list = new ArrayList<>();
    try {
        
    	
    	
       String q = "SELECT * FROM llibrary.book_request_table";
       System.out.println(q); 
               
       ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
        while(rs.next()){
             RequestBookBean b = new RequestBookBean();
            
            b.setBook_name(rs.getString("book_name"));
            b.setUrl(rs.getString("url"));
            b.setNote(rs.getString("note"));
            b.setUser(rs.getString("user_email"));
            b.setR_id(Integer.parseInt(rs.getString("request_id")));

            
            list.add(b);
           
           
        }
        System.out.println(list);
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    return list;
}



}