

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

@WebServlet("/EditPayee")
public class EditPayee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection conn = null;
 
    public EditPayee() {
        super();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String payeeId = request.getParameter("PayeeId"); 
        String payeeName = request.getParameter("PayeeName");
        String payeeNickname = request.getParameter("PayeeNickname"); 
        String bank = request.getParameter("Bank");
        String branch = request.getParameter("Branch"); 
        HttpSession session = request.getSession();
    

        String sql = "UPDATE payees SET PayeeName = ?, PayeeNickname = ?, Bank = ?, Branch = ? WHERE PayeeId = ?";
        
        try {
        	conn = dbconnect.connect();
        	PreparedStatement stmt = conn.prepareStatement(sql);
        	stmt.setString(1, payeeName);
        	stmt.setString(2, payeeNickname);
        	stmt.setString(3, bank);
        	stmt.setString(4, branch);
        	stmt.setString(5, payeeId);
        	
        	 int rs = stmt.executeUpdate();
        	 
        	 if (rs > 0) {
                 session.setAttribute("success_message", "Fund Payee successfully Edited!");

             	response.sendRedirect("transaction/payee.jsp");                 
             } else {
                 response.getWriter().println("Failed to update Payee.");
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
