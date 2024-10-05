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

        


        <div class=" flex-col content-wrapper">


            <ul class="bredcrumb">
            <li><a href="dashboard.php">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="fund-transfer.php">Fund Transfer Services</a></li>
            </ul>

            <div class="flex m-10 m-10">
                <div class="dash_container m-10">


                    <div class="dash_box" onclick="window.location.href='transfer-payee.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Favourite Payee</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='transfer-service.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Fund Transfer</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='transfer-history.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Transfer History
                        </h3>
                    </div>


                </div>

            </div>

            <br><br><br>

            <!-- interbank -->
            <h3 class ="m-10 bold ">More services  </h3><br>
            <div class="flex m-10 m-10">
                <div class="dash_container m-10">


                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Multiple Fund Transfer</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Auto Fund Transfer <br>
                        Maintenance</h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Auto InterBank <br> fund Transfer </h3>
                    </div>

                    <div class="dash_box" onclick="window.location.href='contact-us.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">Auto InterBank <br> fund Transfer </h3>
                    </div>



                </div>

            </div>

        </div>

    </div>
    </div>

    <?php require_once('inc/footer.php') ?>
</body>

</html>