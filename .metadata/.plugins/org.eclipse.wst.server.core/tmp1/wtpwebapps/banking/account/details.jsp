<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Details | Your Road to Safety and Savings</title>
    <link rel="stylesheet" href="../assets/style.css">
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

        <div class=" flex-col content-wrapper m-10">

            <ul class="breadcrumb">
                <li><a href="dashboard.php">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="account-overview.php">Account Overview</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Account Details</li>
            </ul>

            <div class="flex m-10">
                <h2 class="bold">Account Details</h2>
                <div class="account-details">
                    <p><strong>Account Number:</strong> <?php echo htmlspecialchars($account['account_number']); ?></p>
                    <p><strong>Account Name:</strong> <?php echo htmlspecialchars($account['account_name']); ?></p>
                    <p><strong>Account Type:</strong> <?php echo htmlspecialchars($account['account_type']); ?></p>
                    <p><strong>Balance:</strong> <?php echo number_format($account['balance'], 2); ?></p>

                    <ul>
                        <li><a href="epassbook.php?account_number=<?php echo $account['account_number']; ?>" class="btn">View ePassbook</a></li>
                        <li><a href="transaction-history.php?account_number=<?php echo $account['account_number']; ?>" class="btn">View Transaction History</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <?php require_once('inc/footer.php'); ?>
</body>
</html>
