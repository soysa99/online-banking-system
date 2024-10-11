<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-image: url('img/singup.jpg'); /* Use relative path */
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body>
    <!-- Include Header JSP -->
    <jsp:include page="inc/header.jsp" />
    
    <div class="flex-col content-wrapper">
        <div class="cardG" style="width:600px; height:600px;margin-left: auto; margin-right: 30px; background-size: cover;       /* Cover the entire background */
            background-position: center;
            background-repeat: no-repeat;  
        }
        ">
            <h5 class="text-center" style="margin-top:10px;">Create Your Account</h5>
            <form action="/login" method="post">
                <div class="form-item">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                
                <div class="form-item">
                    <label for="Number">Account Number:</label>
                    <input type="number" id="Number" name="Number" required>
                </div>
                
                <div class="form-item">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                
                <div class="form-item">
                    <label for="confirm-password">Confirm Password</label>
                    <input type="password" id="confirm-password" name="confirm-password" required>
                </div>
                <div class="form-item">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
                <div class="text-center">
                    <p class="forget-password">Forgot your password? <a href="/reset-password">Reset it here</a></p>
                </div>
            </form>
        </div>
    </div>


</body>
</html>