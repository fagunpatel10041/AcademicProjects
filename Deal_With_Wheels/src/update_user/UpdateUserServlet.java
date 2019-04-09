package update_user;

import bean.UserBean;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig

public class UpdateUserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
//        /* ----------------- image stored procedure ------------ */
//            Part part = request.getPart("profile_pic");
//            String path = "C:\\Users\\fagun\\Documents\\NetBeansProjects\\UserSideProject\\web\\user_file\\profile_pic\\"+part.getSubmittedFileName();
//            part.write(path);
//          // response.sendRedirect("view.jsp?file="+part.getSubmittedFileName());
//        
            
        /* ----------------- image stored procedure ------------ */   
    String update = new java.util.Date().toString();
        
            UserBean b = new UserBean();

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
            b.setId_proof_pic(request.getParameter("id_proof"));
            b.setResident_proof_pic(request.getParameter("res_proof"));
            b.setSecurity_question_id(request.getParameter("security_question_id"));
            b.setSecurity_question_answer(request.getParameter("security_question_answer"));
            b.setUtype(request.getParameter("user_type"));
            b.setIs_Active(request.getParameter("is_Active"));
            b.setDate_of_insertion(request.getParameter("date_of_insertion"));
            b.setDate_of_update(update);
            boolean status = UpdateManager.Update_User(b);
            if (status) {

                response.sendRedirect("varifyAccount.jsp?success=Your Profile Successfully Updated.");
            } else {
                response.sendRedirect("update_profile.jsp? error_msg= something went wrong. Please try again later.");

            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
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
