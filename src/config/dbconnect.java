/**
 * 
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 
 */
public class dbconnect {

	public static Connection connect() {
		
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/banking_system", "root", "");
			System.out.println("Database connected");
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return conn;
	}
}