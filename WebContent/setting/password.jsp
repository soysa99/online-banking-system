<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer | Your Road to Safety and Savings</title>
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
                <li><a href="home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="setting.jsp">Setting</a></li>

            </ul>



            <div class="container" style="display: flex; justify-content: center; align-items: center;">

                <div class="cardG flex-col" style="width:700px;  ">

                    <div class="search-container">

                    <div class="redline">
                        <h4 style="overflow: hidden;   margin-bottom:20px;"> Change Password
                        <a  href="setting.jsp" style="color: white; float: right; margin-left: 10px;" ><i class="fa-solid fa-circle-xmark"></i></a>
                        <a href="password-otp.jsp" style="color: white; float: right;margin-left: 10px; "><i class="fa-solid fa-forward"></i></a>


                        </h4>
                    </div>



                    <form class="form flex-col">

                    <div class="flex-row justify-content-between">
                    <div class="form-item flex flex-col">
                        <label for="">Old Password<span class="required">*</span></label>
                        <input type="text" id="payee-description" name="payee-description" placeholder="Beneficiary Nickname">
 
                            
                        </div>

                    </div>

                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                        <label for="">New Password<span class="required">*</span></label>
                        <input type="text" id="payee-description" name="payee-description" placeholder="Beneficiary Nickname">
  
                            
                        </div>
                        <div class="form-item flex flex-col">
                        <label for="">Re-enter New Password<span class="required">*</span></label>
                        <input type="text" id="payee-description" name="payee-description" placeholder="Beneficiary Nickname">
 
                            
                        </div>
                        </div>

                        <div class="flex" style="margin-top: 10px">
                	<a href="p-otp.jsp" class="btn btn-primary" style="width:100px "> NEXT</a> 
                </div>
              
            </form>

                

                 

                </div>

            </div>


        </div>

    </div>
</body>
</htm>