package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connector.MySqlConnector;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String user = request.getParameter("msg");
		
		System.out.println(user);
		
		String q = "delete from user_table where User_Email = '"+user+"'";
		
		boolean b = MySqlConnector.DeleteItem(q);
		
		if(b==true)
		{
			System.out.println("User Deleted");
			response.sendRedirect("admin_manage_users.jsp");
		}
		else
		{
			System.out.println("something went wrong");
			response.sendRedirect("admin_manage_users.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
