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
                <li><a href="setting.php">Password Change</a></li>

            </ul>



            <div class="container" style="display: flex; justify-content: center; align-items: center;">

                <div class="cardG flex-col" style="width:800px;  ">

                <div class="container m-10">
                        <div  class="m-10">

                        
                        <h3 style="padding:10px;">New Password</h3>
                        ***************


                            <div class="redline">
                        <h4 style="overflow: hidden;   margin-bottom:20px;"> Request OTP
                        
                             <a href="" style="color: white; float: right;margin-left: 10px; "><i class="fa-solid fa-forward"></i></a>
                            <a href="setting.php" style="color: white; float: right; margin-left: 10px;" ><i class="fa-solid fa-circle-xmark"></i></a>
                            <a href="password.php" style="color: white; float: right; margin-left: 10px;" ><i class="fa-solid fa-backward"></i></a>


                        </h4>
                    </div>

                            <form action="one-timefund.php" method="post">
                                    <div>
                                    <div class="form-item  flex-col"> 
                               

                                <input class="m-10" type="radio" id="sms" name="deliveryMethod" value="SMS" checked>
                                <label class="m-10"  for="sms">SMS</label>


                                <input type="radio" id="email" name="deliveryMethod" value="EMAIL">
                                <label for="email">EMAIL</label>

                                <button type="reset" class="btn btn-primary" style="margin-left: 150px; width:200px">Request OTP</button>
                                </div>

                          

                                <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="" style="padding-top:10px">OTP <span class="required">*</span></label>
                                    <input type="text" name="otp" placeholder="OTP">
                                    </div>
                                </div>
                    
                                    <div>
                                <div class="form-item flex flex-col">
                               
                              
                                <a href="p-success.jsp" class="btn btn-primary" style="width:100px "> Confirm</a> 
                                </a>
                                </div>

                            </div>


                            </form>



                        </div>


                    </div>
                </div>

            </div>


        </div>

    </div>
</body>
</htm>