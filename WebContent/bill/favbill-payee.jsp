<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %> <!-- Import the dbconnect class -->
<%@ page import="javax.servlet.http.HttpSession" %> <!-- Import HttpSession -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Favorite Bill Payee | EasyBank: Banking at Your Fingertips
    </title>
    <link rel="stylesheet" href="../assets/style.css">
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
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

    <div class="flex-col content-wrapper m-10">

        <ul class="bredcrumb">
            <li><a href="../home/home.jsp">Home</a></li>
            <li><i class="fa-solid fa-chevron-right"></i></li>
            <li><a href="fund-transfer.php">Bill Payment Services</a></li>
            <li><i class="fa-solid fa-chevron-right"></i></li>
            <li><a href="one-timebill.php">One Time Bill Payment</a></li>
        </ul>

        <div class="container">
            <div class="cardG">
                <h2 class="text-center">Favorite Bill Payee</h2>

<% 
// Retrieve the success message from session
String successMessage = (String) session.getAttribute("success_message");
if (successMessage != null) {
%>
    <div class="alert fade-in" id="successMessage">
        <%= successMessage %>
        <button class="btn-close" onclick="this.parentElement.style.display='none';">&times;</button>
    </div>
<%
    // Remove the message after displaying it
    session.removeAttribute("success_message");
}
%>
            <form class="content-wrapper form">
    <div class="form-item">
        <label for="payeeName">Payee Name</label>
        <input type="text" id="payeeName" name="payeeName" placeholder="Enter Payee Name">
    </div>
    <div class="form-item">
        <label for="payeeAccountNo">Account Number</label>
        <input type="text" id="payeeAccountNo" name="payeeAccountNo" placeholder="Enter Account Number">
    </div>
    <div class="form-item">
        <label for="contactNumber">Contact Number</label>
        <input type="text" id="contactNumber" name="contactNumber" placeholder="Enter Contact Number">
    </div>
    <div class="form-item">
        <label for="branch">Branch</label>
        <input type="text" id="branch" name="branch" placeholder="Enter Branch">
    </div>
    <div class="form-item">
        <label for="serviceProvider">Service Provider</label>
        <select id="serviceProvider" name="serviceProvider">
            <option value="electricity">Electricity</option>
            <option value="water">Water</option>
            <option value="internet">Internet</option>
            <option value="telecom">Telecom</option>
        </select>
    </div>
    <div class="form-item">
        <label for="billNumber">Bill Number</label>
        <input type="text" id="billNumber" name="billNumber" placeholder="Enter Bill Number">
    </div>
    <button type="submit" class="btn btn-primary">NEXT</button>
</form>

                <!-- Summary Section -->
                <h3 class="m-10">Payee Summary</h3>
               <table>
                        <thead>
                            <tr>
                                <th>Payee Description</th>
                                <th>Billing Number</th>
                                <th>Payee Category</th>
                                <th>Service Provider</th>
                             
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                            String NIC = (String) session.getAttribute("NIC");
                            String sql = "SELECT PayeeID, PayeeCategory, BillAccountNo, ServiceProvider, Description FROM billpayees WHERE NIC = ?";
                            try (Connection conn = dbconnect.connect();
                                 PreparedStatement stmt = conn.prepareStatement(sql)) {
                                 
                                stmt.setString(1, NIC);
                                ResultSet rs = stmt.executeQuery();

                                while (rs.next()) {
                                    String payeeCategory = rs.getString("PayeeCategory");
                                    String billAccountNo = rs.getString("BillAccountNo");
                                    String serviceProvider = rs.getString("ServiceProvider");
                                    String description = rs.getString("Description");
                                    String PayeeID = rs.getString("PayeeID");
                            %>
                                <tr>
                                    <td><%= description %></td>
                                    <td><%= billAccountNo %></td>
                                    <td><%= payeeCategory %></td>
                                    <td><%= serviceProvider %></td>
                                    
                                </tr>
                            <% 
                                }
                            } catch (SQLException e) {
                                e.printStackTrace();
                            } 
                            %>
                        </tbody>
                    </table>

                <!-- OTP Section -->
                <h3 class="m-10">Request OTP</h3>
                <div class="flex" style="text-align: center;">
                 <input type="text" id="billNumber" name="billNumber" placeholder="Enter OTP Number" > <br>
                        <button type="submit" class="btn btn-primary" style="margin: 10px 0px 10px 250px; display: inline-block;">Verify OTP</button>
                    
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Include Footer JSP -->
<jsp:include page="../inc/footer.jsp" />

</body>

</html>
