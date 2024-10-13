

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

/**
 * Servlet implementation class DeletePayee
 */
@WebServlet("/DeletePayee")
public class DeletePayee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeletePayee() {
        super();
        
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String PayeeId = request.getParameter("id"); 
        HttpSession session = request.getSession();

        // Log the incoming BillAccountNo for debugging
        System.out.println("Deleting Bill Account No: " + PayeeId);

        // Check for a valid BillAccountNo
        if (PayeeId == null || PayeeId.isEmpty()) {
            session.setAttribute("error_message", "Invalid Bill Account Number.");
            response.sendRedirect("error.jsp");
            return;
        }

        try (Connection conn = dbconnect.connect()) {
            // Check if the connection was established successfully
            if (conn == null) {
                System.out.println("Database connection failed.");
                session.setAttribute("error_message", "Database connection failed.");
                response.sendRedirect("error.jsp");
                return;
            }

            // Prepare the SQL DELETE statement
            String deleteQuery = "DELETE FROM payees WHERE PayeeId = ?";
            try (PreparedStatement stmt = conn.prepareStatement(deleteQuery)) {
                stmt.setString(1, PayeeId);
                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    // Set success message
                    session.setAttribute("success_message", " Payee successfully deleted.");
                    // Redirect to payee.jsp after deletion
                	response.sendRedirect("transaction/payee.jsp");
                } else {
                    response.getWriter().println("Failed to delete Payee.");
                }

            }
        } catch (SQLException e) {
            // Log SQL exceptions
            System.err.println("SQL State: " + e.getSQLState());
            System.err.println("Error Code: " + e.getErrorCode());
            e.printStackTrace();
            session.setAttribute("error_message", "An error occurred while deleting the Bill Payee.");
            response.sendRedirect("error.jsp");
        }
    }
}
