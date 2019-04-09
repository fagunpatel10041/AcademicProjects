package dww_login;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.UserBean;
import manager.UserManager;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
      
       response.setContentType("text/html;charset=UTF-8");
       
       System.out.println("In Login Servlet");
       
          UserBean b = new UserBean();
       
        b.setEmail(request.getParameter("email"));
        b.setPassword(request.getParameter("password"));
        boolean status = UserManager.IsValidUser(b);
        
        String email = b.getEmail();
      

            if(status)
                {
                    
                    HttpSession session =  request.getSession();
                    session.setAttribute("user_session",email);
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
                  
                }
                else
                {
                   request.setAttribute("error","Invalid User");
                   RequestDispatcher rd2 = request.getRequestDispatcher("reg-login.jsp");
                   rd2.forward(request, response);
                    
                   
                }
            } 
    }
