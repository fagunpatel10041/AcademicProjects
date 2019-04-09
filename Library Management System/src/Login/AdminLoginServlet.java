package Login;

import java.io.IOException;

import javax.management.relation.RelationSupportMBean;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.UserBean;
import manager.UserManager;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Email = request.getParameter("email");
		String Password = request.getParameter("password");
		
		UserBean bean = new UserBean();
		
		bean.setEmail(Email);
		bean.setPassword(Password);
		
		Boolean status = UserManager.IsValidUser(bean);
		
		String fail = "Wrong ID or Password";
		 
		
		if(status)
		{
			HttpSession session =  request.getSession();
			session.setAttribute("email", Email);
			RequestDispatcher rd = request.getRequestDispatcher("admin_dashboard.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("fail", fail);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		
	}

}
