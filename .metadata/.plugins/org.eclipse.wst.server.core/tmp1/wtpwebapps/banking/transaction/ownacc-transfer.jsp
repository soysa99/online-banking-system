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

  <form class="form">
            <div class="form-item">
                <label for="fromAccount">From Account</label>
                <input type="text" id="fromAccount" name="fromAccount" placeholder="Enter Your Account Number" readonly>
            </div>
            <div class="form-item">
                <label for="toAccount">To Account</label>
                <input type="text" id="toAccount" name="toAccount" placeholder="Enter Destination Account Number">
            </div>
            <div class="form-item">
                <label for="amount">Amount (LKR)</label>
                <input type="text" id="amount" name="amount" placeholder="Enter Transfer Amount">
            </div>
            <button type="submit" class="btn btn-primary">Transfer</button>
        </form>


            </div>
        </div>

    </div>
</div>

<!-- Include Footer JSP -->
<jsp:include page="../inc/footer.jsp" />

</body>

</html>
