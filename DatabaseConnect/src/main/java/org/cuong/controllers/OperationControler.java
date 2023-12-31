package org.cuong.controllers;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.cuong.entity.User;
import org.cuong.models.UserModel;

@WebServlet("/operation")
public class OperationControler extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page").toLowerCase();
		
		switch (page) {
		case "listuser":
			listUser(request, response);
			break;
		case "adduser":
			addUserFormLoader(request, response);
			break;
		case "updateuser":
			updateUserFormLoader(request, response);
			break;
		case "deleteuser":
			deleteUserFormLoader(request, response);
			break;
		default:
			errorPage(request, response);
			break;
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String operation = request.getParameter("form").toLowerCase();
		switch (operation) {
		case "adduseroperation":
			User user = new User(request.getParameter("username"), request.getParameter("email"));
			addUserOperation(user);
			listUser(request, response);
			break;
		case "updateuseroperation":
			User updateUser = new User(
					Integer.parseInt(request.getParameter("userId")),
					request.getParameter("username"),
					request.getParameter("email"));
			updateUserOperation(updateUser);
			listUser(request, response);
			break;
		case "deleteuseroperation":
			User deleteUser = new User(
					Integer.parseInt(request.getParameter("userId")),
					request.getParameter("username"),
					request.getParameter("email"));
			deleteUserOperation(deleteUser);
			listUser(request, response);
			break;
		default:
			errorPage(request, response);
			break;
		}
	}
	private void deleteUserOperation(User deleteUser) {
		UserModel.deleteUser(dataSource, deleteUser);
	}

	private void deleteUserFormLoader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Delete User");
		request.getRequestDispatcher("deleteUser.jsp").forward(request, response);
	}
	
	private void updateUserOperation(User updateUser) {
		UserModel.updateUser(dataSource, updateUser);
	}
	private void updateUserFormLoader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Update User");
		request.getRequestDispatcher("updateUser.jsp").forward(request, response);
	}
	
	private void addUserOperation(User user) {
		UserModel.addUser(dataSource, user);
		
	}
	public void addUserFormLoader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Add User");
		request.getRequestDispatcher("addUser.jsp").forward(request, response);
	}
	
	public void errorPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("title", "Error Page");
		request.getRequestDispatcher("error.jsp").forward(request, response);
	}
	public void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> listUser = new ArrayList<User>();
		listUser = UserModel.listUser(dataSource);
		request.setAttribute("listUser", listUser);
		request.setAttribute("title", "List of Users");
		
		request.getRequestDispatcher("listUser.jsp").forward(request, response);
	}
}
