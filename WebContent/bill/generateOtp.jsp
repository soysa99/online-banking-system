<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generate OTP</title>
    <link rel="stylesheet" href="../assets/style.css">
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />

        <div class="flex-col content-wrapper m-10">

            <ul class="bredcrumb">
                <li>Home</li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="account.jsp">Account Services</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Generate OTP</li>
            </ul>

            <h2>Generate OTP</h2>

            <%
                String accountNo = request.getParameter("accountNo");
                String otpMessage = "";

                if (accountNo != null && !accountNo.isEmpty()) {
                    int otp = new java.util.Random().nextInt(900000) + 100000;
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/YourDatabase", "username", "password");

                        String insertOtpQuery = "INSERT INTO OTPs (AccountNo, OTP, GeneratedAt) VALUES (?, ?, NOW())";
                        PreparedStatement stmt = conn.prepareStatement(insertOtpQuery);
                        stmt.setString(1, accountNo);
                        stmt.setInt(2, otp);

                        int rowsInserted = stmt.executeUpdate();

                        if (rowsInserted > 0) {
                            otpMessage = "Your OTP is: " + otp;
                        } else {
                            otpMessage = "Failed to generate OTP. Please try again.";
                        }

                        stmt.close();
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                        otpMessage = "Error generating OTP: " + e.getMessage();
                    }
                }
            %>

            <form action="generateotp.jsp" method="get">
                <label for="accountNo">Enter Account Number:</label>
                <input type="text" id="accountNo" name="accountNo" required>
                <button type="submit">Request OTP</button>
            </form>

            <% if (!otpMessage.isEmpty()) { %>
                <p><strong><%= otpMessage %></strong></p>
            <% } %>
        </div>
    </div>

</body>

</html>
