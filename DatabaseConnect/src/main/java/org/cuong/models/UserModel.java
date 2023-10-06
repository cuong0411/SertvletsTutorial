package org.cuong.models;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.cuong.entity.User;

public class UserModel {
	public static List<User> listUser(DataSource dataSource) {
		// step1 Initialize connection object
		List<User> listUser = new ArrayList<User>();
		
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
				listUser.add(new User(rs.getInt("users_id"), rs.getString("username"), rs.getString("email")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listUser;
	}
}
