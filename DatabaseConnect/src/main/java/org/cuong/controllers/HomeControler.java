package org.cuong.controllers;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.cuong.entity.User;
import org.cuong.models.UserModel;

public class HomeControler extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page").toLowerCase();
		
		switch (page) {
		case "home":
			request.setAttribute("title", "Home Page");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		case "listuser":
			List<User> listUser = new ArrayList<User>();
			listUser = UserModel.listUser(dataSource);
			request.setAttribute("listUser", listUser);
			request.setAttribute("title", "List of Users");
			
			request.getRequestDispatcher("listUser.jsp").forward(request, response);
			break;
		default:
			request.setAttribute("title", "Error Page");
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;
		}
	}

}
