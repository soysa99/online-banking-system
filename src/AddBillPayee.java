



import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import config.dbconnect;
import models.BillPaymentModel;

@WebServlet("/AddBillPayee")
public class AddBillPayee extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    Connection conn = null;
    
    public AddBillPayee() {
        super();
    }
    // Overriding the doGet method 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }
    // Overriding the dopost method 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String NIC = (String) request.getSession().getAttribute("NIC");
        String BillAccountNo = request.getParameter("BillAccountNo");
        String PayeeCategory = request.getParameter("PayeeCategory");
        String ServiceProvider = request.getParameter("ServiceProvider");
        String Description = request.getParameter("Description");
        
        BillPaymentModel billPayment = new BillPaymentModel();
        billPayment.setNIC(NIC);
        billPayment.setBillAccountNo(BillAccountNo);
        billPayment.setPayeeCategory(PayeeCategory);
        billPayment.setServiceProvider(ServiceProvider);
        billPayment.setDescription(Description);        

        String sql = "INSERT INTO billpayees (NIC, BillAccountNo, PayeeCategory, ServiceProvider, Description) VALUES (?, ?, ?, ?, ?)";
        
        try (Connection conn = dbconnect.connect();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, billPayment.getNIC());
            stmt.setString(2, billPayment.getBillAccountNo());
            stmt.setString(3, billPayment.getPayeeCategory());
            stmt.setString(4, billPayment.getServiceProvider());
            stmt.setString(5, billPayment.getDescription());

            int rs = stmt.executeUpdate();

            if (rs > 0) {
            	
            	response.sendRedirect("bill/payee.jsp");

                
            } else {
                response.getWriter().println("Failed to add Bill payee.");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        }
    }
}