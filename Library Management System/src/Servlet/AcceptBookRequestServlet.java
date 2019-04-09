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

import Beans.RequestBookBean;
import Beans.UserBean;
import Connector.MySqlConnector;

@WebServlet("/AcceptBookRequestServlet")
public class AcceptBookRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		
		
		String delete = "DELETE FROM `llibrary`.`book_request_table` WHERE (`request_id` = '4')";
		
		RequestBookBean bean = new RequestBookBean();
		
		try {
            
			
			//String today = new java.util.Date().toString();
			
			LocalDate today_date = LocalDate.now();
			String issue = today_date.toString();
			
			LocalDate nextweek = today_date.plus(2 , ChronoUnit.WEEKS);
			String due = nextweek.toString();
			
			
			
			
			
			String select = "Select * from `llibrary`.`book_request_table` WHERE (`request_id` = '"+request.getParameter("request")+"')";
	                   
	           ResultSet rs =  MySqlConnector.executeQueryAndGetResultset(select);
	            while(rs.next()){
	                 
	            	
	                
	            	bean.setR_id(Integer.parseInt(rs.getString("request_id")));
	            	bean.setBook_name(rs.getString("book_name"));
	            	bean.setUrl(rs.getString("url"));
	            	bean.setUser(rs.getString("user_email"));
	            	
	            	
	                
	            }
	            System.out.println("Data Fetch from request table");
	            
	            String insert = "INSERT INTO `llibrary`.`issued_books_table` (`requested_id`,`book_name`, `url`, `user_email`, `issue_date` , `due_date` ) VALUES ('"+bean.getR_id()+"','"+bean.getBook_name()+"', '"+bean.getUrl()+"', '"+bean.getUser()+"', '"+issue+"' , '"+due+"')";
	            
	            String deleteQuery = "DELETE FROM `llibrary`.`book_request_table` WHERE (`request_id` = '4')";
	            boolean result = MySqlConnector.executePreparedQuery(insert);
	            
	            if(result)
	            {
	            	response.sendRedirect("admin_issued_books.jsp");
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
