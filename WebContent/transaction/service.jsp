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
    <li><a href="index.jsp">Fund Transfer Services</a></li>
     <li><i class="fa-solid fa-chevron-right"></i></li>
    <li>Fund Transfer</li>
    
</ul>
    <div class="container">
        <div class="cardG flex-col">
            <h2 class="text-center">Fund Transfer Services</h2>

           <div class="flex" style="margin-top: 10px" >
            <a href="one-timefund.jsp"><button class="btn btn-primary align-center flex service" > One Time Transfer</button></a>
           </div>
           
           <div class="flex" style="margin-top: 10px" >
            <a href="ownacc-transfer.jsp"><button class="btn btn-primary align-center flex service" >Own Account Transfer</button></a>
           </div>

           <div class="flex" style="margin-top: 10px" >
            <a href=""><button class="btn btn-primary align-center flex service" >Favorite Payee</button></a>
           </div>

        </div>
        </div>
        
    </div>
    
</body>

   
</html>
