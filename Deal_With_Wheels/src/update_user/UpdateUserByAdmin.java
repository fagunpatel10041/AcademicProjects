package update_user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.UserBean;

public class UpdateUserByAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    String update = new java.util.Date().toString();
        
        UserBean b = new UserBean();

        b.setFname(request.getParameter("fname"));
        b.setLname(request.getParameter("lname"));
        b.setEmail(request.getParameter("email"));
        b.setPassword(request.getParameter("password"));
        b.setPhone(request.getParameter("mobile"));
        b.setGender(request.getParameter("gender"));
        b.setDob(request.getParameter("dob"));
        b.setAdd1(request.getParameter("add1"));
        b.setAdd2(request.getParameter("add2"));
        b.setCityid(request.getParameter("city") );
        b.setAreaid(request.getParameter("area"));
        b.setProfile_pic(request.getParameter("profile_pic"));
        b.setId_proof_pic(request.getParameter("id_proof"));
        b.setResident_proof_pic(request.getParameter("res_proof"));
        b.setSecurity_question_id(request.getParameter("security_question_id"));
        b.setSecurity_question_answer(request.getParameter("security_question_answer"));
        
        b.setDate_of_update(update);
        boolean status = UpdateManager.Update_User(b);
        if (status) {

            response.sendRedirect("dww-admin/user-table.jsp");
        } else {
            response.sendRedirect("dww-admin/user-table.jsp? error_msg= something went wrong. Please try again later.");

        }
		
	}

}
