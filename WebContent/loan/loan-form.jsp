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
                <li><a href="beneficiary.php">Manage Beneficiary</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="add-beneficiary.php">Add Beneficiary</a></li>

            </ul>



            <div class="container" style="display: flex; justify-content: center; align-items: center;">

                <div class="cardG flex-col" style="width:700px;  ">

                    <div class="search-container">

                    <div class="flex m-10 m-10">
                <h2 class="m-10 bold">Request For A Lone </h2>
            </div>
                  
                    <form>
            <div class="form-item">
                <label for="fullName">Full Name <span class="required">*</span></label>
                <input type="text" id="fullName" required>
            </div>
            
            <div class="form-item">
                <label for="email">Email Address <span class="required">*</span></label>
                <input type="email" id="email" required>
            </div>
            
            <div class="form-item">
                <label for="phone">Phone Number <span class="required">*</span></label>
                <input type="text" id="phone" required>
            </div>
            
            <div class="form-item">
                <label for="loanAmount">Loan Amount <span class="required">*</span></label>
                <input type="number" id="loanAmount" required>
            </div>
            
            <div class="form-item">
                <label for="loanPurpose">Purpose of Loan <span class="required">*</span></label>
                <select id="loanPurpose" required>
                    <option value="">Select...</option>
                    <option value="home">Home Purchase</option>
                    <option value="car">Car Purchase</option>
                    <option value="education">Education</option>
                    <option value="business">Business</option>
                    <option value="other">Other</option>
                </select>
            </div>

            <div class="form-item">
                <label for="employmentStatus">Employment Status <span class="required">*</span></label>
                <select id="employmentStatus" required>
                    <option value="">Select...</option>
                    <option value="employed">Employed</option>
                    <option value="unemployed">Unemployed</option>
                    <option value="self-employed">Self-Employed</option>
                </select>
            </div>

            <div class="form-item">
                <label for="income">Monthly Income <span class="required">*</span></label>
                <input type="number" id="income" required>
            </div>

            <div class="form-item">
                <label for="additionalInfo">Additional Information</label>
                <textarea id="additionalInfo" rows="4"></textarea>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary">Submit Application</button>
            </div>
        </form>
                

                 

                </div>

            </div>


        </div>

    </div>
</body>
</htm>