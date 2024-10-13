<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Beneficiary</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <jsp:include page="../inc/header.jsp" />
    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />
        <div class="flex-col content-wrapper">
            <ul class="bredcrumb">
                <li><a href="../home/home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="manage-beneficiary.jsp">Manage Beneficiaries</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Edit Beneficiary</li>
            </ul>
            <div class="container">
                <h2 class="text-center">Edit Beneficiary</h2>

                <%
                    // Get beneficiaryId from request
                    String beneficiaryId = request.getParameter("beneficiaryId");

                    // Initialize variables for beneficiary data
                    String beneficiaryName = "";
                    String accountNo = "";
                    String bank = "";
                    String branch = "";
                    String nickname = "";
                    String accountType = "";
                    String beneficiaryType = "";

                    // Fetch beneficiary data from database using beneficiaryId
                    if (beneficiaryId != null) {
                        String query = "SELECT BeneficiaryName, BeneficiaryAccountNo, Bank, Branch, BeneficiaryNickname, AccountType, BeneficiaryType FROM Beneficiaries WHERE BeneficiaryID = ?";
                        try (Connection conn = dbconnect.connect();
                             PreparedStatement stmt = conn.prepareStatement(query)) {
                            stmt.setString(1, beneficiaryId);
                            ResultSet rs = stmt.executeQuery();

                            if (rs.next()) {
                                beneficiaryName = rs.getString("BeneficiaryName");
                                accountNo = rs.getString("BeneficiaryAccountNo");
                                bank = rs.getString("Bank");
                                branch = rs.getString("Branch");
                                nickname = rs.getString("BeneficiaryNickname");
                                accountType = rs.getString("AccountType");
                                beneficiaryType = rs.getString("BeneficiaryType");
                            }
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                %>

                <form action="<%= request.getContextPath() %>/UpdateBeneficiary" method="post">
                    <input type="hidden" name="beneficiaryId" value="<%= beneficiaryId %>">
                    <div class="flex flex-col">
                        <div class="form-item flex flex-col">
                            <label for="beneficiaryName">Beneficiary Name<span class="required">*</span></label>
                            <input type="text" id="beneficiaryName" name="beneficiaryName" value="<%= beneficiaryName %>" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="accountNo">Account Number<span class="required">*</span></label>
                            <input type="text" id="accountNo" name="accountNo" value="<%= accountNo %>" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="bank">Bank<span class="required">*</span></label>
                            <input type="text" id="bank" name="bank" value="<%= bank %>" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="branch">Branch<span class="required">*</span></label>
                            <input type="text" id="branch" name="branch" value="<%= branch %>" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="nickname">Nickname<span class="required">*</span></label>
                            <input type="text" id="nickname" name="nickname" value="<%= nickname %>" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="accountType">Account Type<span class="required">*</span></label>
                            <select id="accountType" name="accountType" required>
                                <option value="Savings" <%= accountType.equals("Savings") ? "selected" : "" %>>Savings</option>
                                <option value="Current" <%= accountType.equals("Current") ? "selected" : "" %>>Current</option>
                            </select>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="beneficiaryType">Beneficiary Type<span class="required">*</span></label>
                            <select id="beneficiaryType" name="beneficiaryType" required>
                                <option value="Family" <%= beneficiaryType.equals("Family") ? "selected" : "" %>>Family</option>
                                <option value="Friend" <%= beneficiaryType.equals("Friend") ? "selected" : "" %>>Friend</option>
                                <option value="Other" <%= beneficiaryType.equals("Other") ? "selected" : "" %>>Other</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Update Beneficiary</button>
                    </div>
                </form>
                <a href="manage-beneficiary.jsp" class="btn btn-secondary">Back to Manage Beneficiaries</a>
            </div>
        </div>
    </div>
</body>
</html>
