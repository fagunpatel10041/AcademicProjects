package delete;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connector.MySqlConnector;

public class DeleteArea extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String delete_area = request.getParameter("area");
        
        String q = " DELETE FROM `deal-with-wheels`.`user_area_table` WHERE `area_id`= '"+delete_area+"'";
        boolean b =  MySqlConnector.DeleteItem(q);
          
          if(b==true)
          {
              response.sendRedirect("dww-admin/area-table.jsp?ack=area deleted");
          }
          else
          {
              response.sendRedirect("dww-admin/area-table.jsp?ack=something went wrong");
          }
	
	}

}
