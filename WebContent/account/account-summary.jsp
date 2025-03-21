<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %> <!-- Import the dbconnect class -->
<%@ page import="javax.servlet.http.HttpSession" %> 
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>General Services | EasyBank</title>
    <link rel="stylesheet" href="../assets/style.css">
    <!-- Font Awesome -->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
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
                <li>General Services</li>
            </ul>

            <div class="container">
                <div class="cardG flex-col">
                    <h2 class="text-center">Our Services</h2>
                    <p class="text-center">Explore the wide range of online banking services offered by EasyBank.</p>

                    <!-- Services Section -->
                    <div class="service-cards">
                        <div class="service-card">
                            <i class="fa-solid fa-wallet fa-3x"></i>
                            <h3>Account Management</h3>
                            <p>Manage your bank account, view your balance, and make account-related changes.</p>
                            <a href="../account/account-summary.jsp" class="btn btn-primary">View Account</a>
                        </div>

                        <div class="service-card">
                            <i class="fa-solid fa-exchange-alt fa-3x"></i>
                            <h3>Fund Transfer</h3>
                            <p>Transfer funds to other accounts or pay your favorite payees easily and securely.</p>
                            <a href="../transaction/index.jsp" class="btn btn-primary">Transfer Funds</a>
                        </div>

                        <div class="service-card">
                            <i class="fa-solid fa-bill-wave fa-3x"></i>
                            <h3>Bill Payments</h3>
                            <p>Pay utility bills, credit card bills, and other payments directly from your account.</p>
                            <a href="../payments/bill-payments.jsp" class="btn btn-primary">Pay Bills</a>
                        </div>

                        <div class="service-card">
                            <i class="fa-solid fa-user-circle fa-3x"></i>
                            <h3>Profile Settings</h3>
                            <p>Update your profile, change your password, and manage your contact details.</p>
                            <a href="../user/profile-settings.jsp" class="btn btn-primary">Edit Profile</a>
                        </div>

                        <div class="service-card">
                            <i class="fa-solid fa-chart-line fa-3x"></i>
                            <h3>Transaction History</h3>
                            <p>View detailed records of all your transactions and track your spending.</p>
                            <a href="../transaction/transaction-history.jsp" class="btn btn-primary">View Transactions</a>
                        </div>

                        <div class="service-card">
                            <i class="fa-solid fa-shield-alt fa-3x"></i>
                            <h3>Security</h3>
                            <p>Ensure the security of your account with advanced protection features.</p>
                            <a href="../security/security-settings.jsp" class="btn btn-primary">Security Settings</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Add the CSS for service cards -->
<style>
        /* Service Cards Layout */
        .service-cards {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin-top: 20px;
        }

        .service-card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .service-card:hover {
            transform: translateY(-5px); /* Slight lift effect on hover */
        }

        .service-card i {
            color: #01aebc;
            margin-bottom: 20px;
        }

        .service-card h3 {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 10px;
        }

        .service-card p {
            font-size: 1rem;
            color: #555;
            margin-bottom: 20px;
        }

        .service-card .btn {
            padding: 10px 20px;
            background-color: #01aebc;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .service-card .btn:hover {
            background-color: #01aebc;
        }
    </style>

</body>
</html>
