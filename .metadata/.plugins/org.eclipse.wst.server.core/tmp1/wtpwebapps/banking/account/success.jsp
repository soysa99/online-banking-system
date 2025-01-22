<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Creation Success | Online Banking</title>
    <link rel="stylesheet" href="css/style.css">

    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>

<?php require_once('inc/header.php'); ?>

<div class="flex">

    <?php require_once('inc/acc-dash.php'); ?>

    <div class="flex-col content-wrapper">
        <h2 class="text-center">Account Creation Successful!</h2>
        <p class="text-center">Congratulations! Your account has been created successfully.</p>
        <p class="text-center">You can now log in to access your account and start using our services.</p>

        <div class="flex" style="margin-top: 20px; justify-content: center;">
            <a href="login.php"><button class="btn btn-primary" style="margin-right: 15px;">Log In</button></a>
            <a href="dashboard.php"><button class="btn btn-secondary">Go to Dashboard</button></a>
        </div>
    </div>
</div>

<?php require_once('inc/footer.php'); ?>
</body>
</html>
