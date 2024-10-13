<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Bill Payee</title>
    <link rel="stylesheet" href="../assets/style.css">
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
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
                <li><a href="index.jsp">Fund Transfer Services</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Edit Favorite Payee</li>
                
            </ul>

            <div class="container">
                <div class="cardG flex-col">
                    <h2 class="text-center">Edit Favorite Payee</h2>

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
                        String payeeName = "";
                        String payeeNickname = "";
                        String payeeAccountNo = "";
                        String bank = "";
                        String branch = "";

                        // Fetch payee data from database using payeeId
                        if (payeeId != null) {
                            String query = "SELECT * FROM payees WHERE PayeeId = ?";
                            try (Connection conn = dbconnect.connect();
                                 PreparedStatement stmt = conn.prepareStatement(query)) {
                                stmt.setString(1, payeeId);
                                ResultSet rs = stmt.executeQuery();

                                if (rs.next()) {
                                	payeeName = rs.getString("PayeeName");
                               		payeeNickname = rs.getString("PayeeNickname");
                                	payeeAccountNo = rs.getString("PayeeAccountNo");
                                	bank = rs.getString("Bank");
                                	branch = rs.getString("Branch");
                                   
                                }
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                        %>

                    <form action="<%= request.getContextPath() %>/EditPayee" method="post">
                        <input type="hidden" name="PayeeId" value="<%= payeeId %>"> <!-- Ensure casing is correct -->
                        
                        <div class="flex flex-col">
                            <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for="PayeeAccountNo"> Beneficiary Account Number <span class="required">*</span></label>
                            <input type="text" name="PayeeAccountNo" value="<%= payeeAccountNo %>" required readonly>
                        </div>

                                <div class="form-item flex flex-col">
                                    <label for="PayeeName">Beneficiary Name<span class="required">*</span></label>
                                    <input type="text" name="PayeeName" value="<%= payeeName %>"  required>
                                </div>
                            </div>

                            <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="PayeeNickname">Beneficiary Nickname<span class="required">*</span></label>
                                    <input type="text" name="PayeeNickname" value="<%= payeeNickname %>" required>
                                   
                                </div>
                            </div>
                            

                            
                            
                            <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for="Bank">  Bank Name <span class="required">*</span></label>							
							<select name="Bank" placeholder="Bank" required>
							    <option value="">Select the Bank</option>
							    <option value="BOC" <%= "BOC".equals(bank) ? "selected" : "" %>>Bank of Ceylon (BOC)</option>
							    <option value="PeoplesBank" <%= "PeoplesBank".equals(bank) ? "selected" : "" %>>People's Bank</option>
							    <option value="CommercialBank" <%= "CommercialBank".equals(bank) ? "selected" : "" %>>Commercial Bank of Ceylon</option>
							    <option value="HNB" <%= "HNB".equals(bank) ? "selected" : "" %>>Hatton National Bank (HNB)</option>
							    <option value="SampathBank" <%= "SampathBank".equals(bank) ? "selected" : "" %>>Sampath Bank</option>
							    <option value="NSB" <%= "NSB".equals(bank) ? "selected" : "" %>>National Savings Bank (NSB)</option>
							    <option value="SeylanBank" <%= "SeylanBank".equals(bank) ? "selected" : "" %>>Seylan Bank</option>
							    <option value="NationsTrustBank" <%= "NationsTrustBank".equals(bank) ? "selected" : "" %>>Nations Trust Bank</option>
							    <option value="DFCC" <%= "DFCC".equals(bank) ? "selected" : "" %>>DFCC Bank</option>
							    <option value="UnionBank" <%= "UnionBank".equals(bank) ? "selected" : "" %>>Union Bank of Colombo</option>
							    <option value="AmanaBank" <%= "AmanaBank".equals(bank) ? "selected" : "" %>>Amana Bank</option>
							    <option value="PanAsiaBank" <%= "PanAsiaBank".equals(bank) ? "selected" : "" %>>Pan Asia Bank</option>
							    <option value="CargillsBank" <%= "CargillsBank".equals(bank) ? "selected" : "" %>>Cargills Bank</option>
							    <option value="SCB" <%= "SCB".equals(bank) ? "selected" : "" %>>Standard Chartered Bank (Sri Lanka)</option>
							    <option value="HSBC" <%= "HSBC".equals(bank) ? "selected" : "" %>>HSBC (Sri Lanka)</option>
							</select>
							
                        </div>

                        <div class="form-item flex flex-col">
                            <label for="Branch"> Branch<span class="required">*</span></label>
							<select name="Branch" placeholder="Branch" required>
						    <option value="">Select the Branch</option>
						    <option value="ColomboMain" <%= "ColomboMain".equals(branch) ? "selected" : "" %>>Colombo Main Branch</option>
						    <option value="Kandy" <%= "Kandy".equals(branch) ? "selected" : "" %>>Kandy Branch</option>
						    <option value="Nugegoda" <%= "Nugegoda".equals(branch) ? "selected" : "" %>>Nugegoda Branch</option>
						    <option value="Negombo" <%= "Negombo".equals(branch) ? "selected" : "" %>>Negombo Branch</option>
						    <option value="Galle" <%= "Galle".equals(branch) ? "selected" : "" %>>Galle Branch</option>
						    <option value="Kurunegala" <%= "Kurunegala".equals(branch) ? "selected" : "" %>>Kurunegala Branch</option>
						    <option value="Matara" <%= "Matara".equals(branch) ? "selected" : "" %>>Matara Branch</option>
						    <option value="Jaffna" <%= "Jaffna".equals(branch) ? "selected" : "" %>>Jaffna Branch</option>
						    <option value="Batticaloa" <%= "Batticaloa".equals(branch) ? "selected" : "" %>>Batticaloa Branch</option>
						    <option value="Ratnapura" <%= "Ratnapura".equals(branch) ? "selected" : "" %>>Ratnapura Branch</option>
						    <option value="Maharagama" <%= "Maharagama".equals(branch) ? "selected" : "" %>>Maharagama Branch</option>
						    <option value="Anuradhapura" <%= "Anuradhapura".equals(branch) ? "selected" : "" %>>Anuradhapura Branch</option>
						    <option value="Badulla" <%= "Badulla".equals(branch) ? "selected" : "" %>>Badulla Branch</option>
						    <option value="Avissawella" <%= "Avissawella".equals(branch) ? "selected" : "" %>>Avissawella Branch</option>
						    <option value="Panadura" <%= "Panadura".equals(branch) ? "selected" : "" %>>Panadura Branch</option>
						    <option value="Kalutara" <%= "Kalutara".equals(branch) ? "selected" : "" %>>Kalutara Branch</option>
						    <option value="Chilaw" <%= "Chilaw".equals(branch) ? "selected" : "" %>>Chilaw Branch</option>
						    <option value="Vavuniya" <%= "Vavuniya".equals(branch) ? "selected" : "" %>>Vavuniya Branch</option>
						    <option value="Trincomalee" <%= "Trincomalee".equals(branch) ? "selected" : "" %>>Trincomalee Branch</option>
						    <option value="Gampaha" <%= "Gampaha".equals(branch) ? "selected" : "" %>>Gampaha Branch</option>
						</select>
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


