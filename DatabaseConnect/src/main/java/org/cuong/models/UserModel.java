package org.cuong.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
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

		try (Connection conn = dataSource.getConnection();
				Statement stmt =conn.createStatement()) {
			
			// step2 create a SQL statement string
			String query = "SELECT * FROM users";
			//stmt = conn.createStatement();

			// step3 execute SQL query
			ResultSet rs = stmt.executeQuery(query);

			// step4 process the result set
			while (rs.next()) {
				listUser.add(new User(rs.getInt("users_id"), rs.getString("username"), rs.getString("email")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listUser;
	}

	public static boolean addUser(DataSource dataSource, User user) {
		String query = "insert into users (username, email) values (?,?)";
		try (Connection conn = dataSource.getConnection();
			PreparedStatement statement = conn.prepareStatement(query)) {
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getEmail());
			boolean result = statement.execute();
			
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
	}

	public static boolean updateUser(DataSource dataSource, User updateUser) {
		String query = "update users set username = ?, email = ? where users_id = ?";
		try (Connection conn = dataSource.getConnection();
			PreparedStatement statement = conn.prepareStatement(query)) {
			statement.setString(1, updateUser.getUsername());
			statement.setString(2, updateUser.getEmail());
			statement.setInt(3, updateUser.getUsers_id());
			boolean result = statement.execute();
			
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public static boolean deleteUser(DataSource dataSource, User deleteUser) {
		String query = "delete from users where users_id = ?";
		try (Connection conn = dataSource.getConnection();
			PreparedStatement statement = conn.prepareStatement(query)) {
			statement.setInt(1, deleteUser.getUsers_id());
			boolean result = statement.execute();
			
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
