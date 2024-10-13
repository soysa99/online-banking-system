

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
import models.FundTransactionModel;


/**
 * Servlet implementation class AddPayee
 */
@WebServlet("/AddPayee")
public class AddPayee extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    Connection conn = null;
    
    public AddPayee() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String NIC = (String) request.getSession().getAttribute("NIC");
        String PayeeAccountNo = request.getParameter("PayeeAccountNo");
        String PayeeName = request.getParameter("PayeeName");
        String PayeeNickname = request.getParameter("PayeeNickname");
        String Bank = request.getParameter("Bank");
        String Branch = request.getParameter("Branch");
        
        
        FundTransactionModel fundPayee = new FundTransactionModel();
        fundPayee.setNIC(NIC);
        fundPayee.setPayeeAccountNo(PayeeAccountNo);
        fundPayee.setPayeeName(PayeeName);
        fundPayee.setPayeeNickname(PayeeNickname);
        fundPayee.setBank(Bank); 
        fundPayee.setBranch(Branch); 
        
        String sql = "INSERT INTO payees (NIC, PayeeAccountNo, PayeeName, PayeeNickname, Bank, Branch ) VALUES ( ?, ?, ?, ?,?,?)";
        
        try (Connection conn = dbconnect.connect();
                PreparedStatement stmt = conn.prepareStatement(sql)) {

               stmt.setString(1, fundPayee.getNIC());
               stmt.setString(2, fundPayee.getPayeeAccountNo());
               stmt.setString(3, fundPayee.getPayeeName());
               stmt.setString(4, fundPayee.getPayeeNickname());
               stmt.setString(5, fundPayee.getBank());
               stmt.setString(6, fundPayee.getBranch());

               int rs = stmt.executeUpdate();
               if (rs > 0) {
               	response.sendRedirect("transaction/payee.jsp");
               } else {
                   response.getWriter().println("Failed to add  payee.");
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
