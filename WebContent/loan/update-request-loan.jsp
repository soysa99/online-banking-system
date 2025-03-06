<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Loan Request</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="../assets/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
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
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="form-container">
                    <h3 class="text-center mb-4"><i class="fas fa-hand-holding-usd"></i> Update Loan Request Form</h3>
                    <form id="loanForm" action="updateLoanRequest" method="post" novalidate>
                        
                        <!-- Personal Information Row -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="fullName" class="form-label">Full Name <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    <input type="text" class="form-control" id="fullName" name="fullName" value="<%= request.getParameter("fullName") %>" required>
                                </div>
                                <div id="fullNameError" class="error-message"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="idNumber" class="form-label">ID Number <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-id-card"></i></span>
                                    <input type="text" class="form-control" id="idNumber" name="idNumber" value="<%= request.getParameter("idNumber") %>" required>
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
                                    <input type="email" class="form-control" id="email" name="email" value="<%= request.getParameter("email") %>" required>
                                </div>
                                <div id="emailError" class="error-message"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="phone" class="form-label">Phone Number <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                    <input type="tel" class="form-control" id="phone" name="phone" value="<%= request.getParameter("phone") %>" required>
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
                                    <input type="text" class="form-control" id="address" name="address" value="<%= request.getParameter("address") %>" required>
                                </div>
                                <div class="invalid-feedback">Please enter your address.</div>
                            </div>
                            <div class="col-md-6">
                                <label for="dob" class="form-label">Date of Birth <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                                    <input type="date" class="form-control" id="dob" name="dob" value="<%= request.getParameter("dob") %>" required>
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
                                    <input type="number" class="form-control" id="loanAmount" name="loanAmount" min="100" step="0.01" value="<%= request.getParameter("loanAmount") %>" required>
                                </div>
                                <div id="loanAmountError" class="error-message"></div>
                            </div>
                            <div class="col-md-6">
                                <label for="loanPurpose" class="form-label">Purpose of Loan <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-briefcase"></i></span>
                                    <input type="text" class="form-control" id="loanPurpose" name="loanPurpose" value="<%= request.getParameter("loanPurpose") %>" required>
                                </div>
                                <div class="invalid-feedback">Please specify the purpose of the loan.</div>
                            </div>
                        </div>

                        <!-- Employment Information Row -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="employmentStatus" class="form-label">Employment Status <span class="text-danger">*</span></label>
                                <select class="form-select" id="employmentStatus" name="employmentStatus" required>
                                    <option value="" disabled>Select Employment Status</option>
                                    <option value="Employed" <%= "Employed".equals(request.getParameter("employmentStatus")) ? "selected" : "" %>>Employed</option>
                                    <option value="Self-Employed" <%= "Self-Employed".equals(request.getParameter("employmentStatus")) ? "selected" : "" %>>Self-Employed</option>
                                    <option value="Unemployed" <%= "Unemployed".equals(request.getParameter("employmentStatus")) ? "selected" : "" %>>Unemployed</option>
                                </select>
                                <div class="invalid-feedback">Please select your employment status.</div>
                            </div>
                            <div class="col-md-6">
                                <label for="income" class="form-label">Monthly Income ($) <span class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-money-bill"></i></span>
                                    <input type="number" class="form-control" id="income" name="income" min="0" value="<%= request.getParameter("income") %>" required>
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
                                    <input type="text" class="form-control" id="bankAccount" name="bankAccount" value="<%= request.getParameter("bankAccount") %>" required>
                                </div>
                                <div class="invalid-feedback">Please enter your bank account number.</div>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-submit btn-lg">Update Loan Request</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript for validation -->
    <script>
        // Example of client-side validation logic (optional, customize as needed)
        document.getElementById('loanForm').addEventListener('submit', function (event) {
            const fullName = document.getElementById('fullName').value;
            const idNumber = document.getElementById('idNumber').value;

            if (!fullName || !idNumber) {
                event.preventDefault();  // Prevent form submission
                document.getElementById('fullNameError').textContent = fullName ? '' : 'Full Name is required';
                document.getElementById('idNumberError').textContent = idNumber ? '' : 'ID Number is required';
            }
        });
    </script>
</body>
</html>
