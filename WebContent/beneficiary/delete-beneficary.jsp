<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Beneficiary | Your Road to Safety and Savings</title>
  <link rel="stylesheet" href="../assets/style.css">
    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>
   
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

        <div class=" flex-col content-wrapper m-10">

            <ul class="bredcrumb">
            <li><a href="home.php">Home</a></li>
            <li><i class="fa-solid fa-chevron-right"></i></li>
            <li><a href="manage-beneficiary.php">Manage Beneficiaries</a></li>
            <li><i class="fa-solid fa-chevron-right"></i></li>
            <li><a href="edit-beneficiary.php">Delete Beneficiary</a></li>
        </ul>



        

        <div class="cardG flex-col" style="width:700px;  ">
            <div class="flex m-10 m-10">
                <h2 class="m-10 bold">Delete Beneficiary</h2>
            </div>

            <div class="flex m-10 m-10">
                <div class="dash_container m-10">
                
                    <p>Are you sure you want to delete this beneficiary?</p>
                    <form action="manage-beneficiary.php" method="POST">
                        <input type="hidden" name="beneficiary_id" value="1">
                        <div class="form-group">
                        <a href="manage-beneficiaries.php" class="btn btn-primary">Delete</a>
                        </div>
                    </form>
                    <a href="manage-beneficiaries.php" class="btn btn-primary">Cancel</a>
                </div>
             
            </div>
            </div>
        </div>

    </div>

</body>

</html>
