package Register;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.UserBean;
import manager.UserManager;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String First_Name = request.getParameter("first_name");
		String Last_Name = request.getParameter("last_name");
		String Email = request.getParameter("email");
		String Password = request.getParameter("pass");
		
		System.out.println(Email);

		System.out.println(Password);
		UserBean userbean = new UserBean();
		
		userbean.setFirstName(First_Name);
		userbean.setLastName(Last_Name);
		userbean.setEmail(Email);
		userbean.setPassword(Password);
		
		Boolean status = UserManager.addUser(userbean); 
		
		String msg = "Registration completed! Please Login Here";
		
		if(status)
        {
            request.setAttribute("succeess", msg);
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
            
        }
        else
        {
            response.sendRedirect("reg-login.jsp?error_msg=This Email is already Registered");
              
        }
		
	}
	
}