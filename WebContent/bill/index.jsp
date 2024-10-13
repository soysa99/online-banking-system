<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bill Payment | Your Road to Safety and Savings</title>
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
                <li><a href="index.jsp">Bill Payment Services</a></li>
            </ul>

            <div class="flex m-10 m-10">
                <div class="dash_container m-10">

                    <a class="dash_box" href="payee.jsp">
                        <i class="fa-solid fa-heart-circle-plus fa-4x"></i>
                        <h3 class="m-10 bold">Favourite Payee</h3>
                    </a>

                    <a class="dash_box" href="service.jsp">
                        <i class="fa-solid fa-money-bill fa-4x"></i>
                        <h3 class="m-10 bold">Bill Payment</h3>
                    </a>

                    <a class="dash_box" href="history.jsp">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Payment History
                        </h3>
                    </a>

                    <a class="dash_box" href="#">
                       <i class="fa-solid fa-clock-rotate-left fa-4x"></i>
                        <h3 class="m-10 bold">Auto Payment Maintenance</h3>
                    </a>

                </div>
            </div>
        </div>
    </div>
 </div>

    <?php require_once('inc/footer.php') ?>
</body>

</html>