<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Your Road to Safety and Savings</title>
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
                <li>Home</li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="account.php">Account Services</a></li>
            </ul>

            <div class="flex m-10 m-10">
                <div class="dash_container m-10">


                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Apply for Personal Loan</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='current-balance.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Account Summary</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Account Maintenance</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Apply For a New Product
                        </h3>
                    </div>

                </div>

            </div>

        </div>

    </div>
    </div>

</body>

</html>