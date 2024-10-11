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
                        
                        
                         <div class="container mt-5">
        <h2>Welcome, <%= request.getSession().getAttribute("name") %>!</h2>
        <p>You have successfully logged into the online banking system.</p>
    </div>
                        
                            <a href="">
                                <i class="fa-solid fa-file-invoice fa-4x" ></i>
                            </a>
                            <h3 class="m-10">Quick Inquiry</h3>
                            <a href="contact-us.php" class="btn btn-primary">Fill The Form</a>
                        </div>

                        <div class="dash_box">
                            <div class="flex flex-col">
                                <a href="">
                                    <i class="fa-solid fa-phone-volume"></i>
                                </a>
                                <h3>Email</h3>
                                <a href="">info@drivepeak.lk</a>
                            </div>

                            <div class="flex flex-col m-10">
                                <h3>Call our 24/7 Hotline</h3>
                                <a href="">+94 11 2 1234 345</a>
                            </div>

                            <div class="flex flex-col">
                                <h3>Follow us on</h3>
                                <div class="flex justify-content-between">
                                    <a href="">
                                        <i class="fa-brands fa-facebook"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa-brands fa-twitter"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa-brands fa-instagram"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa-brands fa-linkedin"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa-brands fa-youtube"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="dash_box">
                            <a href="">
                                <i class="fa-solid fa-map-location-dot"></i>
                            </a>
                            <h3 class="m-10">Find Our Nearest Branch</h3>
                            <a href="contact-us.php" class="btn btn-primary">find Now </a>
                        </div>

                        <div class="dash_box">
                            <a href="">
                                <i class="fa-solid fa-download view"></i>
                            </a>
                            <h3 class="m-10">Drive Peak Policy Book </h3>
                            <a href="contact-us.php" class="btn btn-primary">Download Now</a>
                        </div>

                    </div>

                </div>


                <!-- //contact us -->




            </div>

        </div>
    </div>

   
</body>

</html>