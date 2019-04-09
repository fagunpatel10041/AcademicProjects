package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.UserBean;
import Connector.MySqlConnector;
import manager.BookManager;


@WebServlet("/ManageBookServlet")
public class ManageBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			String book = request.getParameter("book");
			System.out.println(request.getParameter("book"));

			String query= "DELETE FROM `llibrary`.`books_table` WHERE (`isbn` = '"+book+"')";
			
			boolean b = MySqlConnector.DeleteItem(query);
			
			if(b)
			{
				response.sendRedirect("admin_manage_books.jsp");
			}
			else
			{
				response.sendRedirect("admin_dashboard.jsp");
			}
			
	       
		}
	
	
	
	
	}


