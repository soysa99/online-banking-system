<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer | Your Road to Safety and Savings</title>
  <link rel="stylesheet" href="../assets/style.css">
    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>

     <!-- Include Header JSP -->
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

        <div class=" flex-col content-wrapper m-10">

            <ul class="bredcrumb">
                <li><a href="dashboard.php">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="beneficiary.php">Lone Service</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="add-beneficiary.php">Lone details</a></li>

            </ul>
            <div class="container">
    <div class="cardG">
        <h2>Loan Applications</h2>
        <table>
            <thead>
                <tr>
                    <th>Full Name</th>
                    <th>Email Address</th>
                    <th>Phone Number</th>
                    <th>Loan Amount</th>
                    <th>Purpose of Loan</th>
                    <th>Employment Status</th>
                    <th>Monthly Income</th>
                    <th>Additional Information</th>
                    <th>Edit</th> <!-- New Edit Column -->
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>John Doe</td>
                    <td>johndoe@example.com</td>
                    <td>(123) 456-7890</td>
                    <td>$10,000</td>
                    <td>Home Purchase</td>
                    <td>Employed</td>
                    <td>$5,000</td>
                    <td>No additional info</td>
                    <td><a href="view-loan.jsp" class="btn btn-primary">Edit</a></td> <!-- Edit Button -->
                </tr>
                <tr>
                    <td>Jane Smith</td>
                    <td>janesmith@example.com</td>
                    <td>(987) 654-3210</td>
                    <td>$15,000</td>
                    <td>Car Purchase</td>
                    <td>Self-Employed</td>
                    <td>$7,000</td>
                    <td>Looking to buy a new car</td>
                    <td><a href="view-loan.jsp" class="btn btn-primary">Edit</a></td> <!-- Edit Button -->
                </tr>
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
