<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer  | Your Road to Safety and Savings</title>
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
            </ul>

            <div class="flex m-10 m-10">
                <div class="dash_container m-10">


                    <a class="dash_box" href="payee.jsp">
                    	<i class="fa-solid fa-heart-circle-plus fa-4x"></i>
                       
                        <h3 class="m-10 bold">Favourite Payee</h3>
                    </a>

                     <a class="dash_box" href="service.jsp">
                        <i class="fa-solid fa-money-bill-transfer fa-4x"></i>
                        <h3 class="m-10 bold">Fund Transfer</h3>
                    </a>

                    <a class="dash_box" href="history.jsp">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Transfer History
                        </h3>
                    </a>


                </div>

            </div>

            <!-- interbank -->
            <br><br><br>
            <h3 class ="m-10 bold ">More services  </h3><br>
            <div class="flex m-10 m-10">
                <div class="dash_container m-10">


                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Multiple Fund Transfer</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Auto Fund Transfer <br>
                        Maintenance</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Branch To Branch <br> fund Transfer </h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Auto InterBank <br> fund Transfer </h3>
                    </div>



                </div>

            </div>

        </div>

    </div>
    </div>

    <jsp:include page="../inc/footer.jsp" />
</body>

</html>