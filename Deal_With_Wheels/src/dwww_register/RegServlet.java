
package dwww_register;
import java.util.*;
import bean.UserBean;
import manager.UserManager;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.JDBCType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        	
        	System.out.println("In Reg Servlet");
             
            String date = new java.util.Date().toString();
            
            UserBean b=new UserBean();
            
            b.setFname(request.getParameter("fname"));
            b.setLname(request.getParameter("lname"));
            b.setEmail(request.getParameter("email"));
            b.setPassword(request.getParameter("password"));
            b.setPhone(request.getParameter("phone"));
            b.setGender(request.getParameter("gender"));
            b.setDob(request.getParameter("dob"));
            b.setAdd1(request.getParameter("add1"));
            b.setAdd2(request.getParameter("add2"));
            b.setCityid(request.getParameter("city_id") );
            b.setAreaid(request.getParameter("area_id"));
            b.setProfile_pic(request.getParameter("profile_pic"));
            b.setId_proof_pic(request.getParameter("id_proof_pic"));
            b.setResident_proof_pic(request.getParameter("address_proof_pic"));
            b.setSecurity_question_id(request.getParameter("security_question"));
            b.setSecurity_question_answer(request.getParameter("security_question_answer"));
            b.setUtype(request.getParameter("user_type"));
            b.setIs_Active(request.getParameter("is_Active"));
            b.setDate_of_insertion(date);
            
             boolean status = UserManager.addUser(b);
             if(status)
            {
                response.sendRedirect("reg-login.jsp?success=You are Successfully Registered. Please Login Here.");
            }
            else
            {
                response.sendRedirect("reg-login.jsp?error_msg=This Email is already Registered");
                  
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
