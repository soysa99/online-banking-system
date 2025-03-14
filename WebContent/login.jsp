<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="assets/style.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body, html {
            height: 100%; 
            margin: 0; 
        }

        body {
            background-image: url('img/pp.jpeg');
            background-size: cover; 
            background-position: center; 
            background-repeat: no-repeat; 
            background-color: #f0f0f0; 
        }

        .cardG {
            width: 500px;
            height: auto;
            margin-left: auto; 
            margin-right: 30px; /* Align to the right */
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
</body>
</html>
