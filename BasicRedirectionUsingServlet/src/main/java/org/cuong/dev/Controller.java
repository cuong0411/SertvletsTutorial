package org.cuong.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();   
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		response.getWriter().append(request.getParameter("page"));
		
		String page = request.getParameter("page");
		
		// redirection
//		switch (page) {
//		case "login":
//			response.sendRedirect(page + ".jsp");
//			break;
//		case "signUp":
//			response.sendRedirect(page + ".jsp");
//			break;
//		case "about":
//			response.sendRedirect(page + ".jsp");
//			break;
//		default:
//			response.sendRedirect("notFound.jsp");
//			break;
//		}
		
		// forward
		switch (page) {
		case "login":
			getServletContext().getRequestDispatcher("/" + page + ".jsp").forward(request, response);
			break;
		case "signUp":
			getServletContext().getRequestDispatcher("/" + page + ".jsp").forward(request, response);
			break;
		case "about":
			getServletContext().getRequestDispatcher("/" + page + ".jsp").forward(request, response);
			break;
		default:
			getServletContext().getRequestDispatcher("/notFound.jsp").forward(request, response);
			break;
		}

	}

	

}
