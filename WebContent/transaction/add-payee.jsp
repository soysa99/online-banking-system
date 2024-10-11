<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer  | Your Road to Safety and Savings</title>
    <link rel="stylesheet" href="../assets/style.css">
	<script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
 </head>
<body>

 <!-- Include Header JSP -->
    <jsp:include page="../inc/header.jsp" />

<div class="flex">

  <jsp:include page="../inc/acc-dash.jsp" />


    <div class=" flex-col content-wrapper">


<ul class="bredcrumb">
<li><a href="../home/home.jsp">Home</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="fund-transfer.php">Fund Transfer Services</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="add-payee.jsp">Add Favorite Payee</a></li>
</ul>



    <div class="container">
        <div class="cardG flex-col">
            <h2 class="text-center">Favorite Payee</h2>


            <h3 class="m-10">Add Favorite Beneficiary Form</h3>

            <form action="agent-add-customer.php" method="post">

                <div class="flex flex-col">
                 
                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for=""> Beneficiary Account Number <span class="required">*</span></label>
                            <input type="text" name="first_name" placeholder="First name">
                              
                        </div>

                        <div class="form-item flex flex-col">
                            <label for=""> Beneficiary Name<span class="required">*</span></label>
                            <input type="text" name="last_name" placeholder="Last name">
                              
                        </div>
                    </div>

                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for=""> Beneficiary Nickname <span class="required">*</span></label>
                            <input type="number" name="nic" placeholder="NIC">
                             
                        </div>

                        <div class="form-item flex flex-col">
                            <label for=""> Beneficiary Email <span class="required">*</span></label>
                            <input type="email" name="email" placeholder="email">
                            
                        </div>
                    </div>


                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for="">  Bank Name <span class="required">*</span></label>
                            <input type="text" name="bank" placeholder="Bank ">
                             
                        </div>

                        <div class="form-item flex flex-col">
                            <label for=""> Branch<span class="required">*</span></label>
                            <input type="text" name="branch" placeholder="Branch">
                            
                        </div>
                    </div>




                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for="">Beneficiary Contact Number <span class="required">*</span></label>
                            <input type="number" name="contact_no" placeholder="contact number">
                                
                        </div>
                    </div>

            
                
                <div class="flex" style="margin-top: 10px">
                    <button type="submit" name="submit" class="btn btn-primary" style="margin-right: 10px;">Confirm</button>
                    <button type="reset" class="btn btn-primary">Reset</button>
                </div>
            </form>
            
            </div>
        </div>
        </div>
        
    </div>
</body>
</html>
