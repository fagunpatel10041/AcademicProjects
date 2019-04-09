package BookRequest;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.BookBean;
import Beans.RequestBookBean;
import manager.BookRequestManager;

@WebServlet("/BookRequestServlet")
public class BookRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    public BookRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String BookName = request.getParameter("book_name");
		String Url = request.getParameter("url");
		String note = request.getParameter("note");
		String user = request.getParameter("user");
		
		
		System.out.println(BookName);
		System.out.println(Url);
		System.out.println(note);
		System.out.println(user);
		
		
		RequestBookBean bean = new RequestBookBean();
		
		bean.setBook_name(BookName);
		bean.setUrl(Url);
		bean.setNote(note);
		bean.setUser(user);
		
		Boolean status = BookRequestManager.addBook(bean);
		
		if(status)
		{
			response.sendRedirect("book_request.jsp");
			
			
		}
		else
		{
			response.sendRedirect("book_request.jsp");
		}
		
		
		
		
	}

}
