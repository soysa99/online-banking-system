import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.dbconnect;

@WebServlet("/UpdateBillPayee")
public class UpdateBillPayee extends HttpServlet {
    private static final long serialVersionUID = 1L;

    Connection conn = null;
    
    public UpdateBillPayee() {
        super();
    }
    // Overriding the doPost method 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	String PayeeID = request.getParameter("PayeeID"); 
        String description = request.getParameter("Description"); 
        HttpSession session = request.getSession();

        String sql = "UPDATE billpayees SET Description = ? WHERE PayeeID = ?";
        
        try {
        	conn = dbconnect.connect();
        	
        	PreparedStatement stmt = conn.prepareStatement(sql);
        	stmt.setString(1, description);
        	stmt.setString(2, PayeeID);
        	
        	 int rs = stmt.executeUpdate();
        	 
        	 if (rs > 0) {
                 session.setAttribute("success_message", "Bill Payee successfully Edited!");

             	response.sendRedirect("bill/payee.jsp");                 
             } else {
                 response.getWriter().println("Failed to update Bill payee.");
             }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        } finally {
        	try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
        }
    }
}
