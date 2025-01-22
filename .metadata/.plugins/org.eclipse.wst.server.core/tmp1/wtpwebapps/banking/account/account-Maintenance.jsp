<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Account | Online Banking</title>
    <link rel="stylesheet" href="../assets/style.css">
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />
        <div class="content-wrapper flex-col m-10">
            <div class="cardG">
                <h2>Select Account</h2>
                <form id="accountForm" class="form" method="post" action="UpdateNickname.jsp">
                    <!-- Account Selection -->
                    <div class="form-item">
                        <label for="selectAccount">Select Account</label>
                        <select id="selectAccount" name="selectAccount" required>
                            <option value="">-- Choose Account --</option>
                            <% 
                                // Database connection details
                                String url = "jdbc:mysql://localhost:3306/your_database_name"; // Replace with your DB URL
                                String user = "your_db_username"; // Replace with your DB username
                                String password = "your_db_password"; // Replace with your DB password
                                Connection conn = null;
                                PreparedStatement pstmt = null;
                                ResultSet rs = null;

                                try {
                                    // Load JDBC driver
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    // Establish connection
                                    conn = DriverManager.getConnection(url, user, password);

                                    // Query to fetch account details
                                    String query = "SELECT AccountNo, AccountType, Nickname FROM Accounts";
                                    pstmt = conn.prepareStatement(query);
                                    rs = pstmt.executeQuery();

                                    // Populate dropdown
                                    while (rs.next()) {
                                        String accountNo = rs.getString("AccountNo");
                                        String accountType = rs.getString("AccountType");
                                        String nickname = rs.getString("Nickname");
                            %>
                            <option value="<%= accountNo %>">
                                <%= accountNo + " - " + accountType + 
                                    (nickname != null && !nickname.isEmpty() ? " (" + nickname + ")" : "") %>
                            </option>
                            <% 
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                } finally {
                                    // Close resources
                                    if (rs != null) rs.close();
                                    if (pstmt != null) pstmt.close();
                                    if (conn != null) conn.close();
                                }
                            %>
                        </select>
                    </div>

                    <!-- Nickname Update -->
                    <div id="nicknameSection" style="display: none;">
                        <div class="form-item">
                            <label for="nickname">Account Nickname</label>
                            <input type="text" id="nickname" name="nickname" placeholder="Enter New Nickname">
                        </div>

                        <div class="action-buttons">
                            <button type="submit" class="btn btn-primary">Update</button>
                            <button type="reset" class="btn btn-danger">Reset</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="../inc/footer.jsp" />

    <script>
        // Show nickname section only when an account is selected
        document.getElementById('selectAccount').addEventListener('change', function () {
            const nicknameSection = document.getElementById('nicknameSection');
            if (this.value) {
                nicknameSection.style.display = 'block';
            } else {
                nicknameSection.style.display = 'none';
            }
        });
    </script>
</body>
</html>
