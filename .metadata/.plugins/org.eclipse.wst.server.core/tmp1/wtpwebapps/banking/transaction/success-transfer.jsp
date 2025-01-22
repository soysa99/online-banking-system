<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer | Your Road to Safety and Savings</title>
         <link rel="stylesheet" href="../assets/style.css">

    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>
<% 
	if (session.getAttribute("name") == null) {
		response.sendRedirect("../login.jsp");
		return;
	}
%>

     <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

    <div class=" flex-col content-wrapper">


            <ul class="bredcrumb">
                              <li><a href="../home/home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="fund-transfer.php">Fund Transfer Services</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="one-timefund.php">One Time Transfer</a></li>
            </ul>



            <div class="container" style="display: flex; justify-content: center; align-items: center;">

                <div class="cardG flex-col" style="width:700px;  ">

                    <div class="flex-col content-wrapper">
                        <h2> Transaction Successfully !</h2>

                    </div>

                    <div class="flex-col content-wrapper ">
                        <ul>
                             <li>From Account Number:</li>
                            <li>First Name:</li>
                            <li>Beneficiary Account Bank:</li>
                            <li>Beneficiary Branch Name:</li>
                            <li>Beneficiary Account Number:</li>
                            <li>Last Name:</li>
                            <li>Transfer Amount:</li>
                            <li>Transfer On:</li>
                            <li>Beneficiary Contact Number:</li>
                            <li>Beneficiary Email:</li>
                            <li>Remark:</li>
                        </ul>
                    </div>
                    
                      <div class="flex" style="margin-top: 20px; justify-content: center;">
                        <a href="../transaction/service.jsp"><button class="btn btn-primary"
                                style="margin-right: 15px; width: 200px;">Make Another Payment</button></a>
                        <a href="../transaction/index.jsp"><button class="btn btn-primary"
                                style="margin-right: 15px; width: 200px;">Go Back</button></a>
                    </div>

                </div>

                </div>


            </div>


</body>

</html>