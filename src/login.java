import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.dbconnect;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	Connection conn = null;

    public login() {
    	super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// Get username and password from the form
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
	    String sql = "SELECT * FROM users WHERE Username = ? AND Password = ?";
	     
		try {
			conn = dbconnect.connect();
			
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, username);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();

			
			if (rs.next()) {
				HttpSession session = request.getSession();
				session.setAttribute("name",rs.getString("Name"));
				session.setAttribute("NIC",rs.getString("NIC"));
				response.sendRedirect("home/home.jsp");
			} else {
				
				response.getWriter().println("Invalid Username or password");
			}

		} catch (Exception e) {
			System.out.println(e);
			response.getWriter().println("Error during login: " + e.getMessage());
		} finally {
			try {
				if (conn != null) conn.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}
	}
}