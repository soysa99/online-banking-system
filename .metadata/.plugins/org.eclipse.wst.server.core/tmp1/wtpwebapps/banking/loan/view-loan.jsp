<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer | Your Road to Safety and Savings</title>
  <link rel="stylesheet" href="../assets/style.css">
    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>

     <!-- Include Header JSP -->
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

        <div class=" flex-col content-wrapper m-10">

            <ul class="bredcrumb">
                <li><a href="dashboard.php">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="beneficiary.php">Lone Service</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="add-beneficiary.php">Lone details</a></li>

            </ul>
            
            
<div class="container">
    <div class="cardG">
        <h2>Loan Application Details</h2>
        <form id="loanForm">
            <div class="form-item">
                <label for="fullName">Full Name <span class="required">*</span></label>
                <input type="text" id="fullName" value="John Doe" required>
            </div>
            
            <div class="form-item">
                <label for="email">Email Address <span class="required">*</span></label>
                <input type="email" id="email" value="johndoe@example.com" required>
            </div>
            
            <div class="form-item">
                <label for="phone">Phone Number <span class="required">*</span></label>
                <input type="text" id="phone" value="123-456-7890" required>
            </div>
            
            <div class="form-item">
                <label for="loanAmount">Loan Amount <span class="required">*</span></label>
                <input type="number" id="loanAmount" value="10000" required>
            </div>
            
            <div class="form-item">
                <label for="loanPurpose">Purpose of Loan <span class="required">*</span></label>
                <select id="loanPurpose" required>
                    <option value="home" selected>Home Purchase</option>
                    <option value="car">Car Purchase</option>
                    <option value="education">Education</option>
                    <option value="business">Business</option>
                    <option value="other">Other</option>
                </select>
            </div>

            <div class="form-item">
                <label for="employmentStatus">Employment Status <span class="required">*</span></label>
                <select id="employmentStatus" required>
                    <option value="employed" selected>Employed</option>
                    <option value="unemployed">Unemployed</option>
                    <option value="self-employed">Self-Employed</option>
                </select>
            </div>

            <div class="form-item">
                <label for="income">Monthly Income <span class="required">*</span></label>
                <input type="number" id="income" value="3500" required>
            </div>

            <div class="form-item">
                <label for="additionalInfo">Additional Information</label>
                <textarea id="additionalInfo" rows="4">Looking for a low-interest loan.</textarea>
            </div>

            <div class="text-center action-buttons">
                <button type="button" class="btn btn-primary" onclick="saveChanges()">Save Changes</button>
                <button type="button" class="btn btn-danger" onclick="deleteLoan()">Delete Loan Request</button>
            </div>
        </form>
    </div>
</div>

<script>
    function saveChanges() {
        // Logic to save changes, e.g., send data to server
        alert("Changes saved successfully!");
    }

    function deleteLoan() {
        const confirmation = confirm("Are you sure you want to delete this loan application?");
        if (confirmation) {
            // Logic to delete the loan, e.g., send a delete request to the server
            alert("Loan application deleted successfully!");
            // Redirect to the loan application form or home page
            window.location.href = 'loan_application.html';
        }
    }
</script>

</body>
</html>
            
            
            