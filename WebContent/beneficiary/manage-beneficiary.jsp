
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Beneficiaries</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>

<% 
	if (session.getAttribute("name") == null) {
		response.sendRedirect("../login.jsp");
		return;
	}
%>
    <jsp:include page="../inc/header.jsp" />
    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />
        <div class="flex-col content-wrapper">
            <ul class="bredcrumb">
                <li><a href="../home/home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Manage Beneficiaries</li>
            </ul>
            <div class="container">
            
            
                <h2 class="text-center">Manage Beneficiaries</h2>
                 <div class="flex-col content-wrapper">
                                             <a href="add-beneficiary.jsp" class="btn btn-primary" style="margin-top:30px;">+ Add Beneficiary</a>
                 
                      </div>
                
                <br>
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Bank</th>
                            <th>Branch</th>
                            <th>Account Type</th>
                            <th>Beneficiary Type</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                        // Fetch beneficiaries from database
                        String sql = "SELECT BeneficiaryID, BeneficiaryName, BeneficiaryAccountNo, Bank, Branch, BeneficiaryNickname, AccountType, BeneficiaryType FROM Beneficiaries";
                        try (Connection conn = dbconnect.connect();
                             PreparedStatement stmt = conn.prepareStatement(sql);
                             ResultSet rs = stmt.executeQuery()) {
                            while (rs.next()) {
                                String beneficiaryID = rs.getString("BeneficiaryID");
                                String beneficiaryName = rs.getString("BeneficiaryName");
                                String accountNo = rs.getString("BeneficiaryAccountNo");
                                String bank = rs.getString("Bank");
                                String branch = rs.getString("Branch");
                                String nickname = rs.getString("BeneficiaryNickname");
                                String accountType = rs.getString("AccountType");
                                String beneficiaryType = rs.getString("BeneficiaryType");
                        %>
                        <tr>
                            <td><%= beneficiaryName %></td>
                            <td><%= bank %></td>
                            <td><%= branch %></td>
                            <td><%= accountType %></td>
                            <td><%= beneficiaryType %></td>
                            <td>
                                <a href="edit-beneficiary.jsp?beneficiaryId=<%= beneficiaryID %>" class="btn btn-primary">Edit</a>
                                <a href="javascript:void(0);" class="delete-button" data-id="<%= beneficiaryID %>">
                                    <button class="btn btn-danger">Delete</button>
                                </a>
                            </td>
                        </tr>
                        <% 
                            }
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                        %>
                    </tbody>
                </table>
            </div>
            </div>
        </div>
    </div>
    <script>
        var deleteButtons = document.querySelectorAll('.delete-button');

        deleteButtons.forEach(function(button) {
            button.addEventListener('click', function() {
                var id = this.getAttribute('data-id');
                if (confirm('Are you sure you want to delete this beneficiary?')) {
                    window.location.href = '<%= request.getContextPath() %>/DeleteBeneficiary?id=' + id;
                }
            });
        });
    </script>
</body>
</html>
