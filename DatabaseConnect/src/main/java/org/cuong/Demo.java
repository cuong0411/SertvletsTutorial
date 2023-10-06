package org.cuong;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

@WebServlet("/Demo")
public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name = "jdbc/project")
	private DataSource dataSource; // container

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// step1 Initialize connection object
		PrintWriter out = response.getWriter();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = dataSource.getConnection();
			// step2 create a SQL statement string
			String query = "SELECT * FROM users";
			stmt = conn.createStatement();
			
			// step3 execute SQL query
			rs = stmt.executeQuery(query);
			
			// step4 process the result set
			while (rs.next()) {
				out.print("<br/>" + rs.getString("email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
