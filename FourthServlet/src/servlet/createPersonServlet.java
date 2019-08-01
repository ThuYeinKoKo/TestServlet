package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Person;

/**
 * Servlet implementation class createStudentServlet
 */
@WebServlet("/createPersonServlet")
public class createPersonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public createPersonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet - createPersonServlet");
		RequestDispatcher dispatcher = request.getRequestDispatcher("view/person_create_update.jsp");
	    dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost - createPersonServlet");
		 String firstName=request.getParameter("firstName");
		 String lastName=request.getParameter("lastName");
		 String dob=request.getParameter("dob");
		 String age=request.getParameter("age");
		 String address=request.getParameter("address");
		 String nric=request.getParameter("nric");
		 
		 Person pObj=new Person(firstName, lastName, dob, age, address, nric);
		 System.out.println(pObj.toString());
		 
		 System.out.println("Testing with session");
		 HttpSession session=request.getSession();
		 session.setAttribute(firstName,lastName);//"name","author"...//"wy","ph" ..//"name","author1"
		 System.out.println("*"+session.getAttribute("name"));//author  ..//author ..//author1
		 System.out.println("*"+session.getAttribute(firstName));//author ..//ph ..//author1
		 System.out.println("*"+session.getAttribute("wy"));//null ..//ph  ..//ph
		 RequestDispatcher dispatcher = request.getRequestDispatcher("view/index.jsp");
		 dispatcher.forward(request, response);
		 
	}

}
