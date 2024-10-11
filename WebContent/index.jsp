<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trust Wave | Your Road to Safety and Savings</title>
  
     <link rel="stylesheet" href="../assets/style.css">


    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
   
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    
    <style>
    
    html, body {
    margin: 0;
    padding: 0;
    overflow-x: hidden;
}
    
        body {
            background-image: url('img/card.jpg');
            background-size: cover;
            background-position: center;
               background-repeat: no-repeat; 
        }
    </style>
</head>

<body style="margin: 0; padding: 0";>

    <!-- Include Header JSP -->
    <jsp:include page="inc/header.jsp" />

    <div class="hero-image">
        <div class="hero-text">
            <h1 style="font-size:50px">WELCOME TO TRUST WAVE</h1>
            <p class="m-10">Your bank in your pocket</p>
            <a href="login.jsp"><button class="m-10">LOGIN</button></a>  <a href="singup.jsp"><button class="m-10">SING UP</button></a>
        </div>
    </div>

    <div class="flex flex-row m-10">
        <div class="flex flex-col content-wrapper">
            <h1>Trust Wave</h1>
            <h5>The Best Option</h5>
            <p>Our values at Peak Vehicle Insurance encompass integrity, innovation, reliability, and community.
                We prioritize transparency and honesty in all interactions, constantly innovating to meet evolving needs,
                ensuring reliable protection, and fostering a sense of belonging within our community.</p>

            <div class="content-wrapper">
                <h4>"Trust Waves is a secure and user-friendly online banking app designed for effortless financial management. 
                    It offers comprehensive features like account management, bill payments, and real-time transaction alerts, 
                    all backed by cutting-edge encryption and biometric security for a safe banking experience."
                </h4>
            </div>
        </div>
    </div>

    <!-- Include Footer JSP -->
    <jsp:include page="inc/footer.jsp" />

    
</body>

</html>