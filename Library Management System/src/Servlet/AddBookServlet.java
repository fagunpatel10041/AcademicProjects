package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.BookBean;
import manager.BookManager;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BookBean bean = new BookBean();
		
		bean.setIsbn(Integer.parseInt(request.getParameter("isbn")));
		bean.setBook_name(request.getParameter("book_name"));
		bean.setAuthour_name(request.getParameter("author_name"));
		bean.setCategory(request.getParameter("category"));
		
		bean.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		bean.setBorrowed(Integer.parseInt(request.getParameter("borrowed")));
	
		boolean status = BookManager.addBook(bean);
		
		if(status)
		{
			response.sendRedirect("admin_dashboard.jsp");
		
		}
		else
		{
			response.sendRedirect("add_book.jsp?error=something went wrong");
		}
		
		
		
		
	}

}
