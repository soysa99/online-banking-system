<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Creation Success | Online Banking</title>
     <link rel="stylesheet" href="../assets/style.css">

    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>

<jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

        

    <ul class="bredcrumb">
                <li><a href="home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="beneficiary.jsp">Manage Beneficiary</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="add-beneficiary.jsp">Add Beneficiary</a></li>

            </ul>


            <div class="container">
                <div class="cardG flex-col">
                   
                    <h3 class="m-10">New Beneficiary Successfully Added!</h3>

                    
                <div class="flex" style="margin-top: 10px">
                	<a href="add-beneficiary.jsp" class="btn btn-primary" style="margin-right: 15px; width:150px">Add New Beneficiary</a> 
                	<a href="manage-beneficiary.jsp" class="btn btn-primary" style="margin-right: 15px; width:150px">View Beneficiaries</a> 
                </div>

                    


                    </div>
                </div>


            </div>

  
</div>


</body>
</html>
