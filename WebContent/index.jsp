<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trust Wave | Your Road to Safety and Savings</title>
  
<link rel="stylesheet" type="text/css" href="assets/style.css">
<link rel="stylesheet" type="text/css" href="inc/header.jsp">
<link rel="stylesheet" type="text/css" href="inc/footer.jsp">


    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
   
    <link rel="stylesheet" href="css/owl.carousel.min.css">
</head>

<body>

    <!-- Include Header JSP -->
    <jsp:include page="inc/header.jsp" />

    <div class="hero-image">
        <div class="hero-text">
            <h1 style="font-size:50px">WELCOME TO TRUST WAVE</h1>
            <p class="m-10">Your bank in your pocket</p>
            <a href="login.jsp"><button class="m-10">LOGIN</button></a>
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

    <!-- jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Owl Carousel JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <!-- Custom Script -->
    <script>
        $(document).ready(function () {
            $(".owl-carousel").owlCarousel({
                loop: true,
                margin: 10,
                autoplay: true,
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                        nav: false,
                        loop: true
                    },
                    600: {
                        items: 3,
                        nav: false,
                        loop: true
                    },
                    1000: {
                        items: 1,
                        nav: false,
                        loop: true,
                        dot: true
                    }
                }
            });
        });
    </script>

</body>

</html>