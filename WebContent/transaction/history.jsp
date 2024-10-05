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

        <div class=" flex-col content-wrapper m-10">

            <ul class="bredcrumb">
                <li>Dashboard</li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="transfer-history.php">Transaction History</a></li>
            </ul>


                    <h2> Transaction History </h2>

                    <table>
                        <tr>
                            <th>Date</th>
                            <th>Remark</th>
                            <th>Cheque Number</th>
                            <th>Currency</th>
                            <th>Amount</th>
                            <th>Account Balance</th>

                        </tr>

                        <tbody>
                           <td></td>
                          <td></td>
                          <td></td>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <?php require_once('inc/footer.php') ?>
</body>

</html>

<?php mysqli_close($connection); ?>