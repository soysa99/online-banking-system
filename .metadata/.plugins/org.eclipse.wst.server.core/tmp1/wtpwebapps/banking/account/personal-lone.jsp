<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apply for Personal Loan | Online Banking</title>
    <link rel="stylesheet" href="../assets/style.css">
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />
        <div class="content-wrapper flex-col m-10">
            <div class="cardG">
                <h2>Apply for a Personal Loan</h2>
                <form class="form">
                    <!-- Personal Details -->
                    <div class="form-item">
                        <label for="fullName">Full Name <span class="required">*</span></label>
                        <input type="text" id="fullName" name="fullName" placeholder="Enter Full Name" required>
                    </div>

                    <div class="form-item">
                        <label for="email">Email <span class="required">*</span></label>
                        <input type="email" id="email" name="email" placeholder="Enter Email Address" required>
                    </div>

                    <div class="form-item">
                        <label for="phone">Phone Number <span class="required">*</span></label>
                        <input type="text" id="phone" name="phone" placeholder="Enter Phone Number" required>
                    </div>

                    <!-- Loan Details -->
                    <div class="form-item">
                        <label for="loanAmount">Loan Amount <span class="required">*</span></label>
                        <input type="number" id="loanAmount" name="loanAmount" placeholder="Enter Loan Amount" required>
                    </div>

                    <div class="form-item">
                        <label for="loanPurpose">Purpose of Loan <span class="required">*</span></label>
                        <textarea id="loanPurpose" name="loanPurpose" rows="4" placeholder="Enter Purpose of Loan" required></textarea>
                    </div>

                    <!-- Employment Details -->
                    <div class="form-item">
                        <label for="employmentStatus">Employment Status <span class="required">*</span></label>
                        <select id="employmentStatus" name="employmentStatus" required>
                            <option value="">-- Select Status --</option>
                            <option value="employed">Employed</option>
                            <option value="self-employed">Self-Employed</option>
                            <option value="unemployed">Unemployed</option>
                            <option value="student">Student</option>
                        </select>
                    </div>

                    <div class="form-item">
                        <label for="monthlyIncome">Monthly Income (in LK) <span class="required">*</span></label>
                        <input type="number" id="monthlyIncome" name="monthlyIncome" placeholder="Enter Monthly Income" required>
                    </div>

                    <!-- Action Buttons -->
                    <div class="action-buttons">
                        <button type="submit" class="btn btn-primary">Submit Application</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="../inc/footer.jsp" />
</body>
</html>
