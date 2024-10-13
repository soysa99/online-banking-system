<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %> <!-- Import the dbconnect class -->
<%@ page import="javax.servlet.http.HttpSession" %> <!-- Import HttpSession -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Favorite Bill Payee</title>
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

        <div class="flex-col content-wrapper">
            <ul class="bredcrumb">
                <li><a href="../home/home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="index.jsp">Bill Payment Services</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Favorite Bill Payee</li>
            </ul>

            <div class="container">
                <div class="cardG flex-col">
                    <h2 class="text-center">Favorite Bill Payee</h2>

                    <!-- Success Message Section -->
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

<script>
    // Set a timeout to hide the success message after 10 seconds
    setTimeout(function() {
        var successMessage = document.getElementById('successMessage');
        if (successMessage) {
            successMessage.style.opacity = '0'; // Fade out
            setTimeout(function() {
                successMessage.style.display = 'none'; // Remove from the DOM
            }, 500); // Wait for fade-out transition
        }
    }, 5000); // 10 seconds
</script>

                    <!-- Search bar and + button -->
                    <div class="search-container">
                        <a href="add-billpayee.jsp">
                            <button class="btn btn-primary align-center flex">+ Add Favorite Bill Payee</button>
                        </a>
                    </div>

                    <h4 class="m-10">Favourite Bill Payee</h4>

                    <table>
                        <thead>
                            <tr>
                                <th>Payee Description</th>
                                <th>Billing Number</th>
                                <th>Action(s)</th>
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
                                    <td>
                                        <div style="display: flex; gap: 10px; padding: 10px; padding-bottom: 10px; padding-left: 30px; width: 80px; height: 40px;">
                                            <a href="editbillpayee.jsp?payeeId=<%= PayeeID %>">
                                                <button class="btn btn-primary" style="width:100px;">Edit</button>
                                            </a>
                                            <a href="javascript:void(0);" class="delete-button" data-id="<%= billAccountNo %>">
                                                <button class="btn btn-danger" style="width:100px;">Delete</button>
                                            </a>
                                      </div>
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
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = '<%= request.getContextPath() %>/DeleteBillPayee?id=' + id;
                    }
                });
            });
        });
    </script>
    
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        const closeButton = document.getElementById('close-message');
        const successMessage = document.getElementById('success-message');

        if (closeButton && successMessage) {
            closeButton.addEventListener('click', function() {
                successMessage.style.opacity = '0'; // Fade out
                setTimeout(function() {
                    successMessage.style.display = 'none'; // Hide after fade out
                }, 500); // Match the timeout with CSS transition duration
            });
        }
    });
</script>
    
    
</body>
</html>
