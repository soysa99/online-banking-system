<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer  | Your Road to Safety and Savings</title>
    <link rel="stylesheet" href="css/style.css">
    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>
<body>

<?php require_once('inc/header.php') ?>

<div class="flex">

    <?php require_once('inc/acc-dash.php') ?>


    <div class=" flex-col content-wrapper">


<ul class="bredcrumb">
<li><a href="home.jsp">Home</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="transfer-service.php">Fund Transfer Services</a></li>
    
</ul>
    <div class="container">
        <div class="cardG flex-col">
            <h2 class="text-center">Fund Transfer Services</h2>

           <div class="flex" style="margin-top: 10px" >
            <a href="one-timefund.php"><button class="btn btn-primary align-center flex service" > One Time Transfer</button></a>
           </div>
           
           <div class="flex" style="margin-top: 10px" >
            <a href=""><button class="btn btn-primary align-center flex service" >Own Account Transfer</button></a>
           </div>

           <div class="flex" style="margin-top: 10px" >
            <a href=""><button class="btn btn-primary align-center flex service" >Favorite Payee</button></a>
           </div>

        </div>
        </div>
        
    </div>
</body>
</html>
