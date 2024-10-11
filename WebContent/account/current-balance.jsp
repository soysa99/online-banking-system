<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer  | Your Road to Safety and Savings</title>
<link rel="stylesheet" href="../assets/style.css">    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>
<body>

  <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

        <div class=" flex-col content-wrapper m-10">


<ul class="bredcrumb">
<li><a href="home.jsp">Home</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="current-balance.jsp">Account Balance</a></li>
    
</ul>



<div class="container" style="display: flex; justify-content: center; align-items: center;">

<div class="cardG flex-col" style="width:700px;  ">

    <div class="flex-col content-wrapper" style="display: flex; justify-content: center; align-items: center;width:700px ; 
    height: 15px; ">
        <h2> Account Balance </h2>

    </div>
    <div class="search-container">
        
    <div >
            <select style="width: 100%; padding: 5px; font-size: 16px; color: #ffffff; background-color: #60273f; border: none;width:700px ; 
    height: 40px; ">
                <option value="savings">Savings Account</option>
                <option value="current">Current Account</option>
                <option value="fixed">Fixed Deposit</option>
            </select>
        </div>


             <h3 style="font-weight:normal;padding: 15px;" >Account Number</h3>
            
                 
            <h3 style="font-weight:normal; padding: 15px;" >Account Balance </h3>
            
    </div>
    
    <div class="search-container">
            <a href="../transaction/history.jsp">   <button class="btn btn-primary align-center flex">View Transaction History</button></a> 
            </div>

</div>

</div>


</div>

    </div>
</body>
</htm>







<div class="flex-row justify-content-between">
                    <div class=" m-10">
                        <h3>Account Number</h3>
            
                 
                        <h3>Account Balance </h3>
                    </div>
                </div>
              
            
            <div class="search-container">
            <a href="add-billpayee.php">   <button class="btn btn-primary align-center flex">+ Add Favorite Bill Payee</button></a> 
            </div>

            <div></div>