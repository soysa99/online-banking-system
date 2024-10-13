<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Your Road to Safety and Savings</title>
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

        <div class=" flex-col content-wrapper">

            <ul class="bredcrumb">
                <li><a href="dashboard.php">Home</a></li>
                <!-- <li><i class="fa-solid fa-chevron-right"></i></li> -->

            </ul>

                <div class="flex m-10 m-10">
                    <div class="dash_container m-10">
                        

                        <div class="dash_box">
                        
                        
                 
                <!-- //contact us -->




            </div>

        </div>
    </div>
</div>

        </div>
   
</body>

</html>