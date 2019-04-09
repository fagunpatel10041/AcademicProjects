package delete;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connector.MySqlConnector;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_email = request.getParameter("email");
        
        String q = " delete from user_table where email='"+user_email+"' ";
        boolean b =  MySqlConnector.DeleteItem(q);
          
          if(b==true)
          {
              response.sendRedirect("dww-admin/user-table.jsp?ack=user deleted");
          }
          else
          {
              response.sendRedirect("dww-admin/user-table.jsp?ack=something went wrong");
          }
	
	}

}
