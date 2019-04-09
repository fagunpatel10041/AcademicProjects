package add_area;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AreaBean;
import manager.AreaManager;

public class AddAreaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AreaBean bean = new AreaBean();
		
		bean.setArea_name(request.getParameter("area"));
		bean.setCity_id(Integer.parseInt(request.getParameter("city")));
		
		 boolean status =  AreaManager.addArea(bean);
		 
		 if(status)
		 {
			 response.sendRedirect("dww-admin/area-table.jsp");
		 }
		 
		 
	}

}
