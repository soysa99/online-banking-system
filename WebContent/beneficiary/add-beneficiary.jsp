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
                <h2 class="m-10 bold">Add Beneficiary</h2>
            </div>
                  
                    <form action="process-add-beneficiary.php" method="POST">
                        <div class="form-group">
                            <label for="beneficiary_name">Beneficiary Name:</label>
                            <input type="text" id="beneficiary_name" name="beneficiary_name" required>
                        </div>

                        <div class="form-group">
                            <label for="account_number">Account Number:</label>
                            <input type="text" id="account_number" name="account_number" required>
                        </div>

                        <div class="form-group">
                            <label for="bank_name">Bank Name:</label>
                            <input type="text" id="bank_name" name="bank_name" required>
                        </div>

                        <div class="form-group">
                            <label for="branch_name">Branch Name:</label>
                            <input type="text" id="branch_name" name="branch_name" required>
                        </div>


                        <div class="form-group">
                            <label for="beneficiary_type">Beneficiary Type:</label>
                            <select id="beneficiary_type" name="beneficiary_type">
                                <option value="individual">Individual</option>
                                <option value="business">Business</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="account_type">Account Type:</label>
                            <select id="account_type" name="account_type">
                                <option value="savings_account">Savings Account</option>
                                <option value="current_account">Current Account</option>
                                <option value="fixed_deposit">Fixed Deposit Account</option>
                            </select>
                        </div>

                        <div class="flex" style="margin-top: 10px">
                	<a href="success-beneficiary.jsp" class="btn btn-primary" style="margin-right: 15px; width:100px">Submit</a> 
                	<a href="add-beneficiary.jsp" class="btn btn-primary" style="margin-right: 15px; width:100px">Reset</a> 
                </div>

                    </form>
                

                 

                </div>

            </div>


        </div>

    </div>
</body>
</htm>