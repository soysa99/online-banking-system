

import config.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/DeleteBeneficiary")
public class DeleteBeneficiary extends HttpServlet {
    
	
	private static final long serialVersionUID = 1L;
	
	  public DeleteBeneficiary() {
	        super();
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String beneficiaryId = request.getParameter("id"); // Get the BillAccountNo from the request parameter
	        HttpSession session = request.getSession();

	       
	        System.out.println("Deleting Bill Account No: " + beneficiaryId);

	        // Check for a valid BillAccountNo
	        if (beneficiaryId == null || beneficiaryId.isEmpty()) {
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

	           
	            String deleteQuery = "DELETE FROM beneficiaries WHERE BeneficiaryID = ?";  // Prepare the SQL DELETE statement
	            try (PreparedStatement stmt = conn.prepareStatement(deleteQuery)) {
	                stmt.setString(1, beneficiaryId);
	                int rowsAffected = stmt.executeUpdate();

	                if (rowsAffected > 0) {
	                    // Set success message
	                    session.setAttribute("success_message", "Bill Payee successfully deleted.");
	                    // Redirect to payee.jsp after deletion
	                	response.sendRedirect("beneficiary/manage-beneficiary.jsp");
	                } else {
	                    response.getWriter().println("Failed to delete Bill Payee.");
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



