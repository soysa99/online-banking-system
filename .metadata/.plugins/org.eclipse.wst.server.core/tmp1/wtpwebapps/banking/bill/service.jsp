<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bill payment  | EasyBank: Banking at Your Fingertips
</title>
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
    <li><a href="index.jsp">Bill Payment Services</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li>Bill Payment</li>
</ul>



    <div class="container">
        <div class="cardG flex-col">
            <h2 class="text-center">Bill Payment Services</h2>

           <div class="flex" style="margin-top: 10px" >
            <a href="one-timebill.jsp"><button class="btn btn-primary align-center flex service" > One Time Bill Payment</button></a>
           </div>
           
           <div class="flex" style="margin-top: 10px" >
            <a href="favbill-payee.jsp"><button class="btn btn-primary align-center flex service" > Favorite Bill Payment</button></a>
           </div>

           <div class="flex" style="margin-top: 10px" >
            <a href="reload.jsp"><button class="btn btn-primary align-center flex service" > Quick Reload</button></a>
           </div>

           <div class="flex" style="margin-top: 10px" >
            <a href=""><button class="btn btn-primary align-center flex service" > Loan Repayment</button></a>
           </div>
            </div>
        </div>
        </div>
        
    </div>
</body>
</html>
