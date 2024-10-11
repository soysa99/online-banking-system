<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Beneficiaries | Your Road to Safety and Savings</title>
<link rel="stylesheet" href="../assets/style.css">
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- Include Header JSP -->
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

        <div class=" flex-col content-wrapper m-10">


        
        <ul class="bredcrumb">
                <li><a href="home.php">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="manage-beneficiary.php">Manage Beneficiaries</a></li>
            </ul>

            <div class="flex m-10 m-10">
                <h2 class="m-10 bold">Manage Beneficiaries</h2>
            </div>

            <div class="flex m-10 m-10">
                <div class="dash_container m-10">

                    <table class="beneficiary-table">
                        <thead>
                            <tr>
                                <th>Beneficiary Name</th>
                                <th>Account Number</th>
                                <th>Bank Name</th>
                                <th>Branch Name</th>
                                <th>Beneficiary Type</th>
                                <th>Account Type</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <a href="edit-beneficiary.php" class="edit-btn">Edit</a>
                                    <a href="delete-beneficiary.php" class="delete-btn">Delete</a>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <a href="edit-beneficiary.php?id=2" class="edit-btn">Edit</a>
                                    <a href="delete-beneficiary.php?id=2" class="delete-btn">Delete</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>

        </div>

    </div>

</body>

</html>
