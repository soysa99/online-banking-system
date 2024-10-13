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

      <!-- Include Header JSP -->
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

        <div class=" flex-col content-wrapper m-10">


            <ul class="bredcrumb">
                               <li><a href="../home/home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="fund-transfer.php">Fund Transfer Services</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="one-timebill.php">One Time Bill paymentr</a></li>
            </ul>



   <div class="container" style="display: flex; justify-content: center; align-items: center;">

                <div class="cardG flex-col" style="width:700px;  ">

                    <div class="flex-col content-wrapper">
                        <h2>Favorite  Bill Payee Successfully Add !</h2>

                    

                    <div class="flex" style="margin-top: 20px; justify-content: center;">
                        <a href="../bill/payee.jsp"><button class="btn btn-primary"
                                style="margin-right: 15px; width: 200px;">Add Another BillPayee</button></a>
                        <a href="../bill/index.jsp"><button class="btn btn-primary"
                                style="margin-right: 15px; width: 200px;">Go Back</button></a>
                    </div>

                </div>

                               
                </div>


            </div>
	  </div>

</body>

</html>