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
<li><a href="dashboard.php">Home</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="fund-transfer.php">Fund Transfer Services</a></li>
    
</ul>



    <div class="container">
        <div class="cardG flex-col">
            <h2 class="text-center">Favorite Payee</h2>

            <!-- Search bar and + button -->
            <div class="search-container">
            <a href="add-payee.php">   <button class="btn btn-primary align-center flex">+ Add Favorite Payee</button></a> 
            </div>

            <form class="form flex-col">
                <div class="flex-row justify-content-between">
                    <div class="form-item m-10">
                        <label for="payee-description">Beneficiary Nickname</label>
                        <input type="text" id="payee-description" name="payee-description" placeholder="Beneficiary Nickname">
                    </div>

                    <div class="form-item m-10">
                        <label for="billing-number">Beneficiary Account Number</label>
                        <input type="text" id="billing-number" name="billing-number" placeholder="Billing Number">
                    </div>
                </div>
              
            </form>

            <h4 class="m-10">Favourite Payee</h4>

            <table>
                <thead>
                    <tr>
                    <th>Beneficiary Nickname</th>
                        <th>Beneficiary Account Number</th>
                        <th>Action(s)</th>
                    </tr>
                </thead>

                <tbody>
                   
                </tbody>
            </table>
            </div>
        </div>
        </div>
        
    </div>
</body>
</html>
