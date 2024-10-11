import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import config.dbconnect;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Connection conn = null;

    public login() {
    	super();
    	conn = dbconnect.connect();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Get username and password from the form
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println("username :" + username);
		System.out.println("password :" + password);
		
//		try {
//			PreparedStatement stmt = conn.prepareStatement(sql);
//			stmt.setString(1, email);
//			stmt.setString(2, password);
//			ResultSet rs = stmt.executeQuery();
//
//			
//			if (rs.next()) {
//				response.getWriter().println("Login successful! Welcome, " + rs.getString("email"));
//			} else {
//				response.getWriter().println("Invalid email or password");
//			}
//
//		} catch (Exception e) {
//			System.out.println(e);
//			response.getWriter().println("Error during login: " + e.getMessage());
//		} finally {
//			try {
//				if (conn != null) conn.close();
//			} catch (Exception e) {
//				System.out.println(e);
//			}
//		}
	}
}