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

@WebServlet("/DeleteBillPayee")
public class DeleteBillPayee extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DeleteBillPayee() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String billAccountNo = request.getParameter("id"); // Get the BillAccountNo from the request parameter
        HttpSession session = request.getSession();

        // Log the incoming BillAccountNo for debugging
        System.out.println("Deleting Bill Account No: " + billAccountNo);

        // Check for a valid BillAccountNo
        if (billAccountNo == null || billAccountNo.isEmpty()) {
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
            String deleteQuery = "DELETE FROM billpayees WHERE BillAccountNo = ?";
            try (PreparedStatement stmt = conn.prepareStatement(deleteQuery)) {
                stmt.setString(1, billAccountNo);
                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    // Set success message
                    session.setAttribute("success_message", "Bill Payee successfully deleted.");
                    // Redirect to payee.jsp after deletion
                	response.sendRedirect("bill/payee.jsp");
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
