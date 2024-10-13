

import config.dbconnect;
import models.BeneficiaryModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/UpdateBeneficiary")
public class UpdateBeneficiary extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String beneficiaryId = request.getParameter("beneficiaryId");
        String beneficiaryAccountNo = request.getParameter("beneficiaryAccountNo");
        String beneficiaryName = request.getParameter("beneficiaryName");
        String bank = request.getParameter("bank");
        String branch = request.getParameter("branch");
        String beneficiaryNickname = request.getParameter("beneficiaryNickname");
        String accountType = request.getParameter("accountType");
        String beneficiaryType = request.getParameter("beneficiaryType");

        BeneficiaryModel beneficiary = new BeneficiaryModel();
        beneficiary.setBeneficiaryId(beneficiaryId);
        beneficiary.setBeneficiaryAccountNo(beneficiaryAccountNo);
        beneficiary.setBeneficiaryName(beneficiaryName);
        beneficiary.setBank(bank);
        beneficiary.setBranch(branch);
        beneficiary.setBeneficiaryNickname(beneficiaryNickname);
        beneficiary.setAccountType(accountType);
        beneficiary.setBeneficiaryType(beneficiaryType);

        try (Connection conn = dbconnect.connect()) {
            String sql = "UPDATE beneficiaries SET BeneficiaryAccountNo = ?, BeneficiaryName = ?, Bank = ?, Branch = ?, BeneficiaryNickname = ?, AccountType = ?, BeneficiaryType = ? WHERE BeneficiaryID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, beneficiary.getBeneficiaryAccountNo());
            stmt.setString(2, beneficiary.getBeneficiaryName());
            stmt.setString(3, beneficiary.getBank());
            stmt.setString(4, beneficiary.getBranch());
            stmt.setString(5, beneficiary.getBeneficiaryNickname());
            stmt.setString(6, beneficiary.getAccountType());
            stmt.setString(7, beneficiary.getBeneficiaryType());
            stmt.setString(8, beneficiary.getBeneficiaryId());

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                request.getSession().setAttribute("success_message", "Beneficiary updated successfully!");
            } else {
                request.setAttribute("errorMessage", "Failed to update beneficiary. Please try again.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
        }

        request.getRequestDispatcher("edit-beneficiary.jsp?beneficiaryId=" + beneficiaryId).forward(request, response);
    }
}
