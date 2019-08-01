package servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Book;

/**
 * Servlet implementation class createBookServlet
 */
@WebServlet("/createBookServlet")
public class createBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost - createBookServlet");
		 String name=request.getParameter("name");
		 String author=request.getParameter("author");
		 String publisher=request.getParameter("publisher");
		 String publishedYear=request.getParameter("publishedYear");
		 String numberOfBook=request.getParameter("numberOfBook");
		 System.out.println(name+" , "+author);
		 
		
		 
		 
		 
		 Book bookObj=new Book(name,author,publisher,publishedYear,numberOfBook);
		 System.out.println(bookObj.toString());
		 
		 
		 
	}

}
