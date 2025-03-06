<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %> <!-- Import the dbconnect class -->
<%@ page import="javax.servlet.http.HttpSession" %> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Summary | EasyBank</title>
    <link rel="stylesheet" href="../assets/style.css">
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>

    <style>
        /* Styling for account summary cards */
        .account-summary {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-top: 20px;
        }

        .account-card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .account-card:hover {
            transform: translateY(-5px); /* Slight lift effect on hover */
        }

        .account-details h3 {
            font-size: 1.3rem;
            color: #333;
            margin-bottom: 10px;
        }

        .account-details p {
            font-size: 1rem;
            color: #555;
            margin: 5px 0;
        }

        .account-details strong {
            font-weight: bold;
        }
    </style>
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
                <li>Account Summary</li>
            </ul>

            <div class="container">
                <div class="cardG flex-col">
                    <h2 class="text-center">Account Summary</h2>

                    <div class="account-summary">
                        <% 
                        String NIC = (String) session.getAttribute("NIC");
                        String sql = "SELECT AccountNo, AccountType, HolderName, Nickname, Branch, Balance FROM Accounts WHERE NIC = ?";
                        try (Connection conn = dbconnect.connect();
                             PreparedStatement stmt = conn.prepareStatement(sql)) {

                            stmt.setString(1, NIC);
                            ResultSet rs = stmt.executeQuery();

                            while (rs.next()) {
                                String accountNumber = rs.getString("AccountNo");
                                String accountType = rs.getString("AccountType");
                                String holderName = rs.getString("HolderName");
                                String nickname = rs.getString("Nickname");
                                String branch = rs.getString("Branch");
                                double balance = rs.getDouble("Balance");
                        %>
                            <div class="account-card">
                                <div class="account-details">
                                    <h3>Account Number: <%= accountNumber %></h3>
                                    <p><strong>Account Type:</strong> <%= accountType %></p>
                                    <p><strong>Holder Name:</strong> <%= holderName %></p>
                                    <p><strong>Nickname:</strong> <%= nickname != null ? nickname : "N/A" %></p>
                                    <p><strong>Branch:</strong> <%= branch %></p>
                                    <p><strong>Balance:</strong> LKR <%= String.format("%.2f", balance) %></p>
                                </div>
                            </div>
                        <% 
                            }
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
