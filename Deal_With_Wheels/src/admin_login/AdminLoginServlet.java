package admin_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.UserBean;
import manager.UserManager;

public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	       response.setContentType("text/html;charset=UTF-8");
	       
	          UserBean b = new UserBean();
	       
	        b.setEmail(request.getParameter("email"));
	        b.setPassword(request.getParameter("password"));
	        boolean status = UserManager.IsValidUser(b);
	        
	        String email = b.getEmail();
	        if(status)
	                {
	                    
	                    HttpSession session =  request.getSession();
	                    session.setAttribute("admin_session",email);
	                    response.sendRedirect("dww-admin/index.jsp");
	                  
	                }
	                else
	                {	                   
	                    response.sendRedirect("dww-admin/admin_login.jsp?error=invalid user");
	                   
	                }  
	}
}
