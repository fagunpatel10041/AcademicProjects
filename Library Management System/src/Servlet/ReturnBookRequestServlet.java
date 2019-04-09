package Servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.IssuedBookBean;
import Beans.RequestBookBean;
import Connector.MySqlConnector;

@WebServlet("/ReturnBookRequestServlet")
public class ReturnBookRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		
		
		
		IssuedBookBean bean = new IssuedBookBean();
		
		try {
            
			System.out.println("inside a servlet");
			
			//String today = new java.util.Date().toString();
			
			LocalDate today_date = LocalDate.now();
			String issue = today_date.toString();
			
			
			
			String select = "Select * from `llibrary`.`issued_books_table` WHERE (`requested_id` = '"+request.getParameter("request")+"')";
			
			
	                   
	           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(select);
	            while(rs.next()){
	                 
	            	
	                
	            	bean.setRequested_id(rs.getInt("requested_id"));
	            	bean.setBook_name(rs.getString("book_name"));
	            	bean.setUser_email(rs.getString("user_emaIL"));
	            	bean.setIssued_date(rs.getString("issue_date"));
	            	bean.setDue_date(rs.getString("due_date"));
	                
	            }
	            System.out.println("Data Fetch from request table");
	            
	            String insert = "INSERT INTO `llibrary`.`all_archive_books_table` (`request_id`,`book_name`, `user_email`, `issue_date` , `return_date` ) VALUES ('"+bean.getRequested_id()+"','"+bean.getBook_name()+"', '"+bean.getUser_email()+"', '"+bean.getIssued_date()+"' , '"+today_date+"')";
	            
	            boolean result = MySqlConnector.executePreparedQuery(insert);
	            
	            System.out.println("inserted into archive");
	            
	            if(result)
	            {
	            	System.out.println("Inserted...now will delete from requests");
	            }
	            
	            String delete = "DELETE FROM `llibrary`.`issued_books_table` WHERE (`requested_id` = '"+request.getParameter("request")+"')";
	            
	            boolean status = MySqlConnector.executePreparedQuery(delete);
	            
	            if(status)
	            {
	            	response.sendRedirect("admin_all_archive_books.jsp");
	            	System.out.println("data inserted into issued books");
	            }
	            else
	            {
	            	response.sendRedirect("admin_login.jsp");
	            	System.out.println("data fetch but not inserted");
	            }
	            		
	            
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
