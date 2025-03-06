<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer  | EasyBank: Banking at Your Fingertips
</title>
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


    <div class=" flex-col content-wrapper">


        <ul class="bredcrumb">
                           <li><a href="../home/home.jsp">Home</a></li>
            <li><i class="fa-solid fa-chevron-right"></i></li>
            <li><a href="fund-transfer.php">Bill Payment</a></li>
            <li><i class="fa-solid fa-chevron-right"></i></li>
            <li><a href="otp.jsp">One Time Bill Payment</a></li>
        </ul>



        <div class="container">
            <div class="cardG flex-col">
                <h2 class="text-center">One Time Bill Payment</h2>


                <h3 class="m-10">One Time Bill Payment Summary</h3>

                <ul>
                        <li>From Account Number:</li>
                        <li>Payee category:</li>
                        <li>Service Provider</li>
                        <li>Billing Number</li>
                        <li>Amount LKR </li>
                        <li>Payment Date</li>
                        </ul>

                <div class=" flex-col content-wrapper"></div>

                <div class="container m-10">
                    <div  class="m-10">
                        <h3 class="m-10">Request OTP</h3>

                        <form action="one-timebill.php" method="post">
                                <div>
                                <div class="form-item  flex-col"> 
                            <label class="m-10">Delivery Method:</label> <br>

                            <input class="m-10" type="radio" id="sms" name="deliveryMethod" value="SMS" checked>
                            <label class="m-10"  for="sms">SMS</label>


                            <input type="radio" id="email" name="deliveryMethod" value="EMAIL">
                            <label for="email">EMAIL</label>

                            <button type="reset" class="btn btn-primary" style="margin-left: 150px; width:200px">Request OTP</button>
                            </div>

                      

                            <div class="flex flex-row form">
                            <div class="form-item flex flex-col">
                                <label for="">OTP <span class="required">*</span></label>
                                <input type="text" name="otp" placeholder="OTP">
                                </div>
                            </div>
                
                                <div>
                            <div class="form-item flex flex-col">
                           
                            <button type="reset" class="btn btn-primary" style="margin-right: 15px; width:100px"> <a href="success-bill.jsp">Confirm</a></button>
                            </div>

                        </div>


                        </form>



                    </div>


                </div>
            </div>


        </div>


</body>

</html>