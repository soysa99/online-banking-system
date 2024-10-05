<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer | Your Road to Safety and Savings</title>
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
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="one-timebill.php">One Time Bill paymentr</a></li>
            </ul>



            <div class="container">
                <div class="cardG flex-col">
                    <h2 class="text-center">One Time Transfe</h2>


                    <h3 class="m-10">Bill Payment Successfully</h3>

                    <ul>
                    <li>From Account Number:</li>
                            <li>Payee category:</li>
                            <li>Service Provider</li>
                            <li>Billing Number</li>
                            <li>Amount LKR </li>
                            <li>Payment Date</li>
                            </ul>


                            <div class="form-item flex flex-col">
                               
                               <button type="reset" class="btn btn-primary" style="margin-right: 15px; width:100px align:center"> <a href="Bill-s.php">OK</a></button>
                               </div>
                            </div>

                        </div>
                       

                    <div>
                               
                </div>


            </div>


</body>

</html>