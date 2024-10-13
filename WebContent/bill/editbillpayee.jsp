<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Bill Payee | EasyBank: Banking at Your Fingertips
    </title>
    <link rel="stylesheet" href="../assets/style.css">
    <script>
        function validateForm() {
            alert("Submitting form with PayeeID: " + document.querySelector('input[name="PayeeID"]').value);
            return true; // Ensure form continues to submit
        }
    </script>
</head>
<body>

<% 
	if (session.getAttribute("name") == null) {
		response.sendRedirect("../login.jsp");
		return;
	}
%>

    <!-- Include Header JSP -->
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />
       
        
        <div class="flex-col content-wrapper">

            <ul class="bredcrumb">
                <li><a href="../home/home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="index.jsp">Bill Payment Services</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Edit Favorite Bill Payee</li>
            </ul>

            <div class="container">
                <div class="cardG flex-col">
                    <h2 class="text-center">Edit Favorite Bill Payee</h2>

                    <!-- Display error message if it exists -->
                    <% if (request.getAttribute("errorMessage") != null) { %>
                        <div class="error-message" style="color: red; text-align: center;">
                            <%= request.getAttribute("errorMessage") %>
                        </div>
                    <% } %>
                    
                     <%
                        // Get payeeId from request
                        String payeeId = request.getParameter("payeeId");

                        // Initialize variables for payee data
                        String payeeCategory = "";
                        String serviceProvider = "";
                        String billAccountNo = "";
                        String description = "";

                        // Fetch payee data from database using payeeId
                        if (payeeId != null) {
                            String query = "SELECT PayeeCategory, BillAccountNo, ServiceProvider, Description FROM billpayees WHERE PayeeID = ?";
                            try (Connection conn = dbconnect.connect();
                                 PreparedStatement stmt = conn.prepareStatement(query)) {
                                stmt.setString(1, payeeId);
                                ResultSet rs = stmt.executeQuery();

                                if (rs.next()) {
                                    payeeCategory = rs.getString("PayeeCategory");
                                    serviceProvider = rs.getString("ServiceProvider");
                                    billAccountNo = rs.getString("BillAccountNo");
                                    description = rs.getString("Description");
                                }
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        %>

                    <form action="<%= request.getContextPath() %>/UpdateBillPayee" method="post">
                        <input type="hidden" name="PayeeID" value="<%= payeeId %>"> <!-- Ensure casing is correct -->
                        <div class="flex flex-col">
                            <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="payeeCategory">Payee Category<span class="required">*</span></label>
                                    <input type="text" id="payeeCategory" value="<%= payeeCategory %>" readonly required>
                                </div>

                                <div class="form-item flex flex-col">
                                    <label for="serviceProvider">Service Provider<span class="required">*</span></label>
                                    <input type="text" id="serviceProvider" value="<%= serviceProvider %>" readonly required>
                                </div>
                            </div>

                            <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="BillAccountNo">Payee Account Number (Billing Number)<span class="required">*</span></label>
                                    <input type="text" id="BillAccountNoDisplay" value="<%= billAccountNo %>" readonly required>
                                    <input type="hidden" name="BillAccountNo" value="<%= billAccountNo %>">
                                </div>
                            </div>

                            <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="description">Description:</label>
                                    <input type="text" name="Description" value="<%= description %>" required> <!-- Use description here -->
                                </div>
                            </div>
                            
                            <div class="flex" style="margin-top: 10px">
                               <button type="submit" class="btn btn-primary" style="margin-right: 15px; width:100px">Update</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

</body>
</html>

</html>
