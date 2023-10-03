package org.cuong.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class MemberAreaController
 */
@WebServlet("/MemberAreaController")
public class MemberAreaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberAreaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "destroy": {
			request.getSession().invalidate();
//			Cookie[] cookies = request.getCookies();
//			for (Cookie cookie : cookies) {
//				if (cookie.getName().equals("username")) {
//					cookie.setValue(null);
//					cookie.setMaxAge(0);
//					response.addCookie(cookie);
//				}
//			}
			response.sendRedirect(request.getContextPath() + "/SiteController?action=login");
			break;
		}
		case "memberArea":
			request.getRequestDispatcher("memberArea.jsp").forward(request, response);
			break;
		case "memberOnly":
			request.getRequestDispatcher("memberOnly.jsp").forward(request, response);
			break;
		default:
			throw new IllegalArgumentException("Unexpected value: " + action);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
