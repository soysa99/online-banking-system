<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="assets/style.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body, html {
            height: 100%; 
            margin: 0; 
        }

        body {
            background-image: url('img/cc.jpg');
            background-size: cover; 
            background-position: center; 
            background-repeat: no-repeat; 
            background-color: #f0f0f0; 
        }

        .cardG {
            width: 600px;
            height: auto;
            margin-left: 0; 
            margin-right: auto; 
            margin-top: 50px; 
            background: linear-gradient(to bottom right, #ffffff, #e6e6e6); 
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 30px;
        }

        .form-item {
            margin-bottom: 20px;
        }

        .form-item label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-item input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form-item input:focus {
            outline: none;
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
        }

        .btn-primary {
            background-color: #4CAF50;
            border-color: #4CAF50;
            padding: 10px 20px;
            width: 100%;
            border-radius: 5px;
        }

        .btn-primary:hover {
            background-color: #45a049;
            border-color: #45a049;
        }

        .forget-password a {
            color: #4CAF50;
            text-decoration: none;
        }

        .forget-password a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
  <!-- Include Header JSP -->
    <jsp:include page="inc/header.jsp" />

    <div class="flex-col content-wrapper">
        <div class="cardG">
            <h5 class="text-center" style="margin-top:10px; font-size: 1.5rem; font-weight: bold;">Create Your Account</h5>
            <form action="/login" method="post">
                <div class="form-item">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" placeholder="Enter your username" required>
                </div>
                
                <div class="form-item">
                    <label for="Number">Account Number:</label>
                    <input type="number" id="Number" name="Number" placeholder="Enter your account number" required>
                </div>
                
                <div class="form-item">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter your password" required>
                </div>
                
                <div class="form-item">
                    <label for="confirm-password">Confirm Password</label>
                    <input type="password" id="confirm-password" name="confirm-password" placeholder="Re-enter your password" required>
                </div>
                <div class="form-item">
                    <button type="submit" class="btn btn-primary">Sign Up</button>
                </div>
                <div class="text-center">
                    <p class="forget-password">Forgot your password? <a href="/reset-password">Reset it here</a></p>
                </div>
            </form>
        </div>
    </div>

    
</body>
</html>
