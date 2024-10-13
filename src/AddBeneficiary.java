

import models.BeneficiaryModel;
import config.dbconnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/AddBeneficiary")
public class AddBeneficiary extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String beneficiaryAccountNo = request.getParameter("beneficiaryAccountNo");
        String beneficiaryName = request.getParameter("beneficiaryName");
        String bank = request.getParameter("bank");
        String branch = request.getParameter("branch");
        String beneficiaryNickname = request.getParameter("beneficiaryNickname");
        String accountType = request.getParameter("accountType");
        String beneficiaryType = request.getParameter("beneficiaryType");

        BeneficiaryModel beneficiary = new BeneficiaryModel();
        beneficiary.setBeneficiaryAccountNo(beneficiaryAccountNo);
        beneficiary.setBeneficiaryName(beneficiaryName);
        beneficiary.setBank(bank);
        beneficiary.setBranch(branch);
        beneficiary.setBeneficiaryNickname(beneficiaryNickname);
        beneficiary.setAccountType(accountType);
        beneficiary.setBeneficiaryType(beneficiaryType);

        try (Connection conn = dbconnect.connect()) {
            String sql = "INSERT INTO beneficiaries (BeneficiaryAccountNo, BeneficiaryName, Bank, Branch, BeneficiaryNickname, AccountType, BeneficiaryType) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, beneficiary.getBeneficiaryAccountNo());
            stmt.setString(2, beneficiary.getBeneficiaryName());
            stmt.setString(3, beneficiary.getBank());
            stmt.setString(4, beneficiary.getBranch());
            stmt.setString(5, beneficiary.getBeneficiaryNickname());
            stmt.setString(6, beneficiary.getAccountType());
            stmt.setString(7, beneficiary.getBeneficiaryType());
            
            int rs = stmt.executeUpdate();
            
            
    if (rs > 0) {
            	
            	response.sendRedirect("beneficiary/manage-beneficiary.jsp");

                
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
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
   