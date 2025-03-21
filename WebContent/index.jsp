<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trust Wave | Your Road to Safety and Savings</title>

    <link rel="stylesheet" type="text/css" href="assets/style.css">

    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <style>
        html, body {
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            background: linear-gradient(to bottom, #ccc, #333);
            font-family: 'Roboto', sans-serif;
        }

        body {
            color: #fff;
            text-align: center;
        }

        .hero-section {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url('img/ook.jpg') no-repeat center center/cover;
            padding: 20px;
            position: relative;
        }

        .hero-section::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3);
            z-index: 1;
        }

        .hero-section .blur-box {
            position: relative;
            background: rgba(0, 0, 0, 0.6);
            border-radius: 15px;
            padding: 30px;
            backdrop-filter: blur(10px);
            z-index: 2;
        }

        .hero-section h1 {
            font-size: 4rem;
            color: rgb(126, 214, 171);;
            margin-bottom: 20px;
        }

        .hero-section p {
            font-size: 1.5rem;
            color: rgba(255, 255, 255, 0.9);
            margin-bottom: 30px;
        }

        .btn-container {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
              align-items: center;
        }

        .btn-container a {
            padding: 15px 30px;
            font-size: 1.2rem;
            text-decoration: none;
            color: #1e432e;;
            border-radius: 5px;
            background-color: rgb(126, 214, 171);;
            transition: background-color 0.3s;
              align-items: center;
        }

.btn-container a:hover {
  background-color: #754f61;   
       }

        .additional-section {
            display: flex;
            justify-content: center;
            align-items: center;
            background: #afaeae;
            padding: 50px;
            color: #fff;
        }

        .additional-section .content {
            max-width: 600px;
            text-align: left;
        }

        .additional-section ul {
            padding-left: 20px;
        }
        
        .additional-section h2 {
         color: #333;
        }

        .subsections {
            background: #fff;
            color: #333;
            padding: 50px 20px;
            text-align: center;
        }

        .subsection-item {
            margin: 20px 0;
        }

        .subsection-item h3 {
            color: #285e39;
        }

        footer {
            background: #222;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>

<body>


    <!-- Include Header JSP -->
    <jsp:include page="inc/header.jsp" />

    <div class="hero-section">
        <div class="blur-box">
            <h1>Welcome to Trust Wave</h1>
            <p>Your Trusted Partner for Secure and Smart Banking</p>
           <div class="btn-container" style="text-align: center;">
    <a href="login.jsp" style="margin: 10px 0px 10px 250px; display: inline-block;">Login</a>
    <a href="signup.jsp" style="margin: 10px 10px; display: inline-block;">Sign Up</a>
</div>

            <p class="hero-quote">"Secure your future, one step at a time."</p>
        </div>
    </div>

    <div class="additional-section">
        <div class="content">
            <h2>Why Choose Us?</h2>
            <ul>
                <li><strong>Mobile Banking Features</strong>: Deposit checks, get real-time updates, and manage your finances on the go.</li>
            <li><strong>Convenient Bill Payments</strong>: Pay bills easily, set up automatic payments, and manage your financial obligations.</li>
            <li><strong>Budgeting & Financial Tools</strong>: Track spending, set goals, and manage finances with personalized insights.</li>
            <li><strong>24/7 Customer Support</strong>: Quick, responsive support for any questions or concerns at any time.</li>
            <li><strong>Competitive Rates</strong>: Get better rates on loans, savings, and credit products.</li>
            <li><strong>Paperless Transactions</strong>: Eco-friendly and efficient way to manage finances without paperwork.</li>
            </ul>
        </div>
    </div>

    <div class="subsections">
    <div class="dash_container">
        <div class="dash_box">
            <i class="fas fa-cogs"></i> <!-- Optional icon for feature highlight -->
            <h3>Feature Highlight</h3>
            <p>Discover our advanced banking features, including AI-driven insights, secure transactions, and personalized dashboards for efficient management of your finances.</p>
            <a href="#" class="btn">Learn More</a>
        </div>
        <div class="dash_box">
            <i class="fas fa-gift"></i> <!-- Optional icon for exclusive promotions -->
            <h3>Exclusive Promotions</h3>
            <p>Enjoy exclusive cashback offers and attractive rewards on your Trust Wave card with every transaction. Experience banking benefits like never before!</p>
            <a href="#" class="btn">Claim Offer</a>
        </div>
        <div class="dash_box">
            <i class="fas fa-globe"></i> <!-- Optional icon for global reach -->
            <h3>Global Reach</h3>
            <p>Bank seamlessly across the globe with our state-of-the-art international banking network, ensuring hassle-free experiences wherever you travel.</p>
            <a href="#" class="btn">Explore More</a>
        </div>
        <div class="dash_box">
            <i class="fas fa-headset"></i> <!-- Optional icon for 24/7 support -->
            <h3>24/7 Support</h3>
            <p>Our dedicated support team is here to assist you around the clock, ensuring your banking experience remains smooth and worry-free at all times.</p>
            <a href="#" class="btn">Contact Support</a>
        </div>
    </div>
</div>


    <!-- Include Footer JSP -->
    <jsp:include page="inc/footer.jsp" />

</body>

</html>
