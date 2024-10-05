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
                <li><a href="one-timefund.php">One Time Transfer</a></li>
            </ul>



            <div class="container">
                <div class="cardG flex-col">
                    <h2 class="text-center">One Time Transfe</h2>


                    <h3 class="m-10">Add Favorite Beneficiary Summary</h3>

                    <ul>
                            <li>From Account Number:</li>
                            <li>First Name:</li>
                            <li>Beneficiary Account Bank:</li>
                            <li>Beneficiary Branch Name:</li>
                            <li>Beneficiary Account Number:</li>
                            <li>Last Name:</li>
                            <li>Transfer Amount:</li>
                            <li>Transfer On:</li>
                            <li>Beneficiary Contact Number:</li>
                            <li>Beneficiary Email:</li>
                            <li>Remark:</li>
                            </ul>

                    <div class=" flex-col content-wrapper"></div>

                    <div class="container m-10">
                        <div  class="m-10">
                            <h3 class="m-10">Request OTP</h3>

                            <form action="one-timefund.php" method="post">
                                    <div>
                                    <div class="form-item  flex-col"> 
                                <label class="m-10">Delivery Method:</label> <br>

                                <input class="m-10" type="radio" id="sms" name="deliveryMethod" value="SMS" checked>
                                <label class="m-10"  for="sms">SMS</label>


                                <input type="radio" id="email" name="deliveryMethod" value="EMAIL">
                                <label for="email">EMAIL</label>

                                <button type="reset" class="btn btn-primary" style="margin-left: 150px; width:200px">Request OTP</button>
                                </div>

                          

                                <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="">OTP <span class="required">*</span></label>
                                    <input type="text" name="otp" placeholder="OTP">
                                    </div>
                                </div>
                    
                                    <div>
                                <div class="form-item flex flex-col">
                               
                                <a href="success-transfer.php"> 
                                    <button type="reset" class="btn btn-primary" style="margin-right: 15px; width:100px" > 
                                    <a href="success-transfer.php"> Confirm   </a></button>
                                </a>
                                </div>

                            </div>


                            </form>



                        </div>


                    </div>
                </div>


            </div>


</body>

</html>