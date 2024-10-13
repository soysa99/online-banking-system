<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer | Your Road to Safety and Savings</title>
    <link rel="stylesheet" href="../assets/style.css">
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
            <li><a href="index.jsp">Bill Payment Services</a></li>
            <li><i class="fa-solid fa-chevron-right"></i></li>
            <li><a href="add-billpayee.jsp">Add Favorite Bill Payee</a></li>
        </ul>

        <div class="container">
            <div class="cardG flex-col">
                <h2 class="text-center">Favorite Bill Payee</h2>
                <h3 class="m-10">Add Favorite Bill Form</h3>
                
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

<form action="<%= request.getContextPath() %>/AddBillPayee" method="POST">
    <div class="flex flex-col">
        <div class="flex flex-row form">
            <div class="form-item flex flex-col">
                <label for="payeeCategory">Payee category<span class="required">*</span></label>
                <select name="PayeeCategory" id="payeeCategory" onchange="updateProviders()" required>
                    <option value="">Select Payee category</option>
                    <option value="electricity">Electricity</option>
                    <option value="water">Water Bill</option>
                    <option value="telecommunications">Telecommunications</option>
                    <option value="insurance">Insurance</option>
                    <option value="housing">Housing</option>
                    <option value="other">Other Bill Payment</option>
                </select>
            </div>

            <div class="form-item flex flex-col">
                <label for="serviceProvider">Service Provider<span class="required">*</span></label>
                <select id="serviceProvider" name="ServiceProvider" required>
                    <option value="">Select Service Provider</option>
                </select>
            </div>
        </div>

        <div class="flex flex-row form">
            <div class="form-item flex flex-col">
                <label for="BillAccountNo">Payee Account Number (billing Number) <span class="required">*</span></label>
                <input type="number" name="BillAccountNo" placeholder="Payee Account Number" required>
            </div>
        </div>

        <div class="flex flex-row form">
            <div class="form-item flex flex-col">
                <label for="Description">Payee Description<span class="required">*</span></label>
                <input type="text" name="Description" placeholder="Description" required>
            </div>
        </div>

        <div class="flex" style="margin-top: 10px">
           
    <button type="submit" class="btn btn-primary">Submit</button>


           
             <button type="reset" class="btn btn-primary">Reset</button>
        </div>
    </div>
</form>
            </div>
        </div>
    </div>
</div>

<script>
    const providers = {
        electricity: ["Ceylon Electricity Board (CEB)"],
        water: ["National Water Supply and Drainage Board (NWSDB)"],
        telecommunications: ["Dialog Axiata", "Mobitel", "Hutch"],
        insurance: ["Sri Lanka Insurance Corporation", "Janashakthi Insurance"],
        housing: [], 
        other: [] 
    };

    function updateProviders() {
        const category = document.getElementById('payeeCategory').value;
        const providerSelect = document.getElementById('serviceProvider');

        // Clear previous options
        providerSelect.innerHTML = '<option value="">Select Service Provider</option>';

        if (providers[category]) {
            providers[category].forEach(provider => {
                const option = document.createElement('option');
                option.value = provider;
                option.textContent = provider;
                providerSelect.appendChild(option);
            });
        }
    }
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
