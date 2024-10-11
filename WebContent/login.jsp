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
            background-image: url('img/login-bg.jpg');
            background-size: cover;
            background-position: center;
        }
    </style>
</head>
<body>
  <!-- Include Header JSP -->
    <jsp:include page="inc/header.jsp" />

        <div class=" flex-col content-wrapper">

        <div class="cardG" style= "width:500px;margin-left: auto; margin-right: 30px;">
     
    
 	    <h4 class="text-center">Welcome to Online Banking</h4>
            <h6 class="text-center">Please log in to continue</h6>


            
   			<form action="login" method="post">
                <div class="form-item">
                    <label for="username">Username:</label>
                    <input type="text" id="username" value="shamal01" name="username" required>
                </div>
               
                
                <div class="form-item">
                    <label for="password">Password</label>
                    <input type="password" id="password"value="123" name="password" required>
                </div>
                
             
             <div class="form-item">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
                <div class="text-center">
                    <p class="forget-password">Forgot your password? <a href="/reset-password">Reset it here</a></p>
                </div>

            </form>
            
            
                      <div class="mt-3">
                <% 
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null) {
                %>
                <div class="alert alert-danger">
                    <%= errorMessage %>
                </div>
                <% } %>
            </div>
            
            
             
               </div>
           </div>
            
            

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>