<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Overview | Your Road to Safety and Savings</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>
    <?php require_once('inc/header.php'); ?>

    <div class="flex">
        <?php require_once('inc/acc-dash.php'); ?>

        <div class="flex-col content-wrapper">
            <ul class="bredcrumb">
                <li><a href="dashboard.php">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Account Overview</li>
            </ul>

            <div class="flex m-10">
                <h2 class="bold">Your Accounts</h2>
                <div class="account-overview">
                    <?php if (!empty($accounts)): ?>
                        <table class="account-table">
                            <thead>
                                <tr>
                                    <th>Account Number</th>
                                    <th>Account Name</th>
                                    <th>Account Type</th>
                                    <th>Balance</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($accounts as $account): ?>
                                    <tr>
                                        <td><?php echo htmlspecialchars($account['account_number']); ?></td>
                                        <td><?php echo htmlspecialchars($account['account_name']); ?></td>
                                        <td><?php echo htmlspecialchars($account['account_type']); ?></td>
                                        <td><?php echo number_format($account['balance'], 2); ?></td>
                                        <td>
                                            <a href="account-details.php?account_number=<?php echo $account['account_number']; ?>" class="btn">View Details</a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    <?php else: ?>
                        <p>No accounts found.</p>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>

    <?php require_once('inc/footer.php'); ?>
</body>

</html>