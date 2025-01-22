<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Account Type | Online Banking</title>
    <link rel="stylesheet" href="css/style.css">
    
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>
    <?php require_once('inc/header.php'); ?>

    <div class="flex">
        <?php require_once('inc/acc-dash.php'); ?>

        <div class="flex-col content-wrapper">
            <ul class="breadcrumb">
                <li><a href="dashboard.php">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="account-type.php">Account Type Selection</a></li>
            </ul>

            <h2 class="m-10 bold">Choose Your Account Type</h2>
            <div class="flex m-10">
                <div class="dash_container m-10">
                    <div class="dash_box" onclick="window.location.href='savings-account.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-piggy-bank fa-4x"></i>
                        <h3 class="m-10 bold">Savings Account</h3>
                        <p class="m-10">Ideal for individuals looking to save and earn interest.</p>
                    </div>

                    <div class="dash_box" onclick="window.location.href='current-account.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-briefcase fa-4x"></i>
                        <h3 class="m-10 bold">Current Account</h3>
                        <p class="m-10">Perfect for business or frequent transactions.</p>
                    </div>

                    <div class="dash_box" onclick="window.location.href='fixed-deposit.php';" style="cursor: pointer;">
                        <i class="fa-solid fa-lock fa-4x"></i>
                        <h3 class="m-10 bold">Fixed Deposit</h3>
                        <p class="m-10">Invest for a fixed period and secure returns.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php require_once('inc/footer.php'); ?>
</body>

</html>
