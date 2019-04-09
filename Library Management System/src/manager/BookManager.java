package manager;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Beans.BookBean;
import Beans.IssuedBookBean;
import Beans.UserBean;
import Connector.MySqlConnector;

public class BookManager {
	
	
	public static List<BookBean> getAllBooks(){
		List<BookBean> list = new ArrayList<>();
        try {
            
        	
        	
           String q = "SELECT * FROM llibrary.books_table;";
                   
           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
           
           
           
            while(rs.next()){
                 BookBean b = new BookBean();
                
                b.setIsbn(rs.getInt("isbn"));
                b.setBook_name(rs.getString("book_name"));
                b.setAuthour_name(rs.getString("author_name"));
                b.setCategory(rs.getString("category"));
                
                b.setQuantity(rs.getInt("quantity"));
                b.setBorrowed(rs.getInt("borrowed"));
             
                
                list.add(b);
               
            }
            
            System.out.println(list);
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	
	public static List<IssuedBookBean> getAllArchiveBooks(){
		List<IssuedBookBean> list = new ArrayList<>();
        try {
            
        	
        	
           String q = "SELECT * FROM llibrary.all_archive_books_table;";
                   
           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
           
           
           
            while(rs.next()){
            	IssuedBookBean b = new IssuedBookBean();
                
                b.setRequested_id(rs.getInt("request_id"));
                b.setBook_name(rs.getString("book_name"));
                b.setUser_email(rs.getString("user_email"));
                b.setIssued_date(rs.getString("issue_date"));
                b.setDue_date(rs.getString("return_date"));
                
                list.add(b);
               
            }
            
            System.out.println("method clled and added into list");
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	
	public static List<IssuedBookBean> getAllArchiveBooksByUser(String email){
		List<IssuedBookBean> list = new ArrayList<>();
        try {
            
        	
        	
           String q = "SELECT * FROM llibrary.all_archive_books_table WHERE user_email='"+email+"'";
                   
           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
           
           
           
            while(rs.next()){
            	IssuedBookBean b = new IssuedBookBean();
                
                b.setRequested_id(rs.getInt("request_id"));
                b.setBook_name(rs.getString("book_name"));
                b.setUser_email(rs.getString("user_email"));
                b.setIssued_date(rs.getString("issue_date"));
                b.setDue_date(rs.getString("return_date"));
                
                list.add(b);
               
            }
            
            System.out.println("method clled and added into list");
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	
	public static List<IssuedBookBean> getAllIssuedBooks(){
		List<IssuedBookBean> list = new ArrayList<>();
        try {
            
        	
        	
           String q = "SELECT * FROM llibrary.issued_books_table";
                   
           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
           
           
           
            while(rs.next()){
                 
            	IssuedBookBean b = new IssuedBookBean();
                
                b.setRequested_id(Integer.parseInt(rs.getString("requested_id")));
                b.setBook_name(rs.getString("book_name"));
                b.setUrl(rs.getString("url"));
                b.setUser_email(rs.getString("user_email"));
                b.setIssued_date(rs.getString("issue_date"));
                b.setDue_date(rs.getString("due_date")); 
             
                
                list.add(b);
               
            }
            
          
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
	
	public static List<IssuedBookBean> getAllIssuedBooksByUser(String user){
		List<IssuedBookBean> list = new ArrayList<>();
        try {
            
        	
        	
           String q = "SELECT * FROM llibrary.issued_books_table WHERE user_email='"+user+"'";
                   
           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(q);
           
           
           
            while(rs.next()){
                 
            	IssuedBookBean b = new IssuedBookBean();
                
                b.setRequested_id(Integer.parseInt(rs.getString("requested_id")));
                b.setBook_name(rs.getString("book_name"));
                b.setUrl(rs.getString("url"));
                b.setUser_email(rs.getString("user_email"));
                b.setIssued_date(rs.getString("issue_date"));
                b.setDue_date(rs.getString("due_date")); 
             
                
                list.add(b);
               
            }
            
          
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

	public static boolean deleteBook(String parameter) {
		
		String query= "DELETE FROM `llibrary`.`books_table` WHERE (`isbn` = '"+parameter+"')";
		
		System.out.println("done delete");
		return  MySqlConnector.executePreparedQuery(query);
		
		
	}
	
public static boolean addBook(BookBean bean) {
		
	
		String query= "INSERT INTO `llibrary`.`books_table` (`isbn`, `book_name`, `author_name`, `category`,`quantity`, `borrowed`) VALUES ('"+bean.getIsbn()+"', '"+bean.getBook_name()+"', '"+bean.getAuthour_name()+"', '"+bean.getCategory()+"','"+bean.getQuantity()+"', '"+bean.getBorrowed()+"')";
		
		System.out.println("done Insert");
		return  MySqlConnector.executePreparedQuery(query);
		
		
	}

}
