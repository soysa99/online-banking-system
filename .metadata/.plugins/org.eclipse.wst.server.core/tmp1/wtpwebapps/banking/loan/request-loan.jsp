<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Request Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/style.css">
    <style>
        body {
            background-color: #FAF3E0;
        }
        .form-container {
            background-color: #FFFFFF;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }
        .btn-submit {
            background-color: #4CAF50;
            color: white;
        }
        .error-message {
            color: red;
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }
    </style>
</head>
<body>

<jsp:include page="../inc/header.jsp" />
    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />
        <div class="flex-col content-wrapper">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="form-container">
                    <h3 class="text-center mb-4"><i class="fas fa-hand-holding-usd"></i> Loan Request Form</h3>
                    <form id="loanForm" action="insertLoanRequest" method="post" novalidate>
                        
                        <!-- Personal Information Row -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="fullName" class="form-label">Full Name <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    <input type="text" class="form-control" id="fullName" name="fullName" required>
                                </div>
                                <div id="fullNameError" class="error-message"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="idNumber" class="form-label">ID Number <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-id-card"></i></span>
                                    <input type="text" class="form-control" id="idNumber" name="idNumber" required>
                                </div>
                                <div class="invalid-feedback">Please enter your ID number.</div>
                            </div>
                        </div>

                        <!-- Contact Information Row -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email Address <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div id="emailError" class="error-message"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="phone" class="form-label">Phone Number <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                    <input type="tel" class="form-control" id="phone" name="phone" required>
                                </div>
                                <div class="invalid-feedback">Please enter a valid phone number.</div>
                            </div>
                        </div>

                        <!-- Address Information Row -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="address" class="form-label">Address <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-map-marker-alt"></i></span>
                                    <input type="text" class="form-control" id="address" name="address" required>
                                </div>
                                <div class="invalid-feedback">Please enter your address.</div>
                            </div>
                            <div class="col-md-6">
                                <label for="dob" class="form-label">Date of Birth <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                                    <input type="date" class="form-control" id="dob" name="dob" required>
                                </div>
                                <div id="dobError" class="error-message"></div>
                                <div class="invalid-feedback">Please enter your date of birth.</div>
                            </div>
                        </div>

                        <!-- Loan Information Row -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="loanAmount" class="form-label">Loan Amount <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-dollar-sign"></i></span>
                                    <input type="number" class="form-control" id="loanAmount" name="loanAmount" min="100" step="0.01" required>
                                </div>
                                <div id="loanAmountError" class="error-message"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="loanPurpose" class="form-label">Purpose of Loan <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-briefcase"></i></span>
                                    <input type="text" class="form-control" id="loanPurpose" name="loanPurpose" required>
                                </div>
                                <div class="invalid-feedback">Please specify the purpose of the loan.</div>
                            </div>
                        </div>

                        <!-- Employment Information Row -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="employmentStatus" class="form-label">Employment Status <span class="text-danger">*</span></label>
                                <select class="form-select" id="employmentStatus" name="employmentStatus" required>
                                    <option value="" disabled selected>Select Employment Status</option>
                                    <option value="Employed">Employed</option>
                                    <option value="Self-Employed">Self-Employed</option>
                                    <option value="Unemployed">Unemployed</option>
                                </select>
                                <div class="invalid-feedback">Please select your employment status.</div>
                            </div>
                            <div class="col-md-6">
                                <label for="income" class="form-label">Monthly Income ($) <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-money-bill"></i></span>
                                    <input type="number" class="form-control" id="income" name="income" min="0" required>
                                </div>
                                <div id="incomeError" class="error-message"></div>
                            </div>
                        </div>

                        <!-- Bank Information Row -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="bankAccount" class="form-label">Bank Account Number <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-university"></i></span>
                                    <input type="text" class="form-control" id="bankAccount" name="bankAccount" required>
                                </div>
                                <div class="invalid-feedback">Please enter your bank account number.</div>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-submit"><i class="fas fa-paper-plane"></i> Submit Loan Request</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

   <script>
    document.getElementById('loanForm').addEventListener('submit', function(event) {
        let isValid = true;

        // Clear previous error messages
        document.getElementById('fullNameError').textContent = '';
        document.getElementById('emailError').textContent = '';
        document.getElementById('loanAmountError').textContent = '';
        document.getElementById('incomeError').textContent = '';
        document.getElementById('dobError').textContent = '';

        // Custom validation for Full Name
        const fullName = document.getElementById('fullName').value;
        if (fullName.length < 3) {
            document.getElementById('fullNameError').textContent = 'Full name must be at least 3 characters long.';
            isValid = false;
        }

        // Email validation
        const email = document.getElementById('email').value;
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            document.getElementById('emailError').textContent = 'Please enter a valid email address.';
            isValid = false;
        }

        // Loan amount validation
        const loanAmount = parseFloat(document.getElementById('loanAmount').value);
        if (isNaN(loanAmount) || loanAmount < 100) {
            document.getElementById('loanAmountError').textContent = 'Loan amount must be at least $100.';
            isValid = false;
        }

        // Income validation
        const income = parseFloat(document.getElementById('income').value);
        if (isNaN(income) || income <= 0) {
            document.getElementById('incomeError').textContent = 'Income must be a positive number.';
            isValid = false;
        }

        // Age validation
        const dob = new Date(document.getElementById('dob').value);
const today = new Date();

// Check if the birthdate is today or in the future
if (dob >= today) {
    document.getElementById('dobError').textContent = 'Your birthdate cannot be today or a future date.';
    isValid = false;
} else {
    const age = today.getFullYear() - dob.getFullYear();
    const monthDiff = today.getMonth() - dob.getMonth();
    const dayDiff = today.getDate() - dob.getDate();

    // Adjust the age if the birthday hasn't occurred this year yet
    if (monthDiff < 0 || (monthDiff === 0 && dayDiff < 0)) {
        age--;
    }

    // Check if age is below 18
    if (age < 18) {
        document.getElementById('dobError').textContent = 'You must be at least 18 years old to request a loan.';
        isValid = false;
    }
}

        if (!isValid) {
            event.preventDefault(); // Prevent form submission
        }
    });
</script>

</body>
</html>
