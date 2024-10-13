import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import config.dbconnect;

/**
 * Servlet implementation class OneTimeBill
 */
@WebServlet("/transaction/AddPayee")
public class OneTimeBill extends HttpServlet {
    private static final long serialVersionUID = 1L;

    Connection conn = null;

    public OneTimeBill() {
        super();
        conn = dbconnect.connect(); // Initialize database connection
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String PaymentID = request.getParameter("PaymentID");
        String AccountNo = (String) request.getSession().getAttribute("AccountNo");
        String BillAccountNo = request.getParameter("BillAccountNo");
        String PayeeCategory = request.getParameter("PayeeCategory");
        String ServiceProvider = request.getParameter("ServiceProvider");
        String Amount = request.getParameter("Amount");
        String PaymentDate = request.getParameter("PaymentDate");

        // SQL Insert Query
        String sql = "INSERT INTO billpayments (PaymentID, AccountNo, BillAccountNo, PayeeCategory, ServiceProvider, Amount, PaymentDate) VALUES (?,?,?,?,?,?,?)";

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, PaymentID);
            stmt.setString(2, AccountNo);
            stmt.setString(3, BillAccountNo);
            stmt.setString(4, PayeeCategory);
            stmt.setString(5, ServiceProvider);
            stmt.setString(6, Amount);
            stmt.setString(7, PaymentDate);

            int rs = stmt.executeUpdate(); // Execute the update

            // Set attributes to pass to JSP
            request.setAttribute("PaymentID", PaymentID);
            request.setAttribute("AccountNo", AccountNo);
            request.setAttribute("BillAccountNo", BillAccountNo);
            request.setAttribute("PayeeCategory", PayeeCategory);
            request.setAttribute("ServiceProvider", ServiceProvider);
            request.setAttribute("Amount", Amount);
            request.setAttribute("PaymentDate", PaymentDate);

            // Forward to otp.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("otp.jsp");
            dispatcher.forward(request, response);

            if (rs > 0) {
                System.out.println("Payee Added!");
                response.getWriter().println("Payee added successfully.");
            } else {
                response.getWriter().println("Failed to add payee.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null) conn.close(); // Close connection
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

