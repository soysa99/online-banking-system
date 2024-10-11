<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer  | Your Road to Safety and Savings</title>
  <link rel="stylesheet" href="../assets/style.css">
    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>
<body>

 <jsp:include page="../inc/header.jsp" />

    <div class="flex">
		
		<jsp:include page="../inc/acc-dash.jsp" />

    <div class=" flex-col content-wrapper">


<ul class="bredcrumb">
                <li><a href="../home/home.jsp">Home</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="index.jsp">Fund Transfer Services</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="service.jsp">Fund Transfer</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li>One Time Transfer</li>
</ul>



    <div class="container">
        <div class="cardG flex-col">

        
            <h2 class="text-center">One Time transfer </h2>


            <h3 class="m-10 m-10">Transaction Details</h3>

            <form action="one-timefund.php" method="post" >

                <div class="flex flex-col">
                 
                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for=""> From Account Number <span class="required">*</span></label>
                            <input type="text" name="first_name" placeholder="First name">
                               
                        </div>

                    </div>

                    
                    <div></div>
                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                        <label for="">Beneficiary Account Bank<span class="required">*</span></label>
                            <select name="vehicle_id">
                                <option value="">Beneficiary Account Bank</option>
                                <?php echo $vehicle_list; ?>
                            </select>
                            
                        </div>
                        <div class="form-item flex flex-col">
                        <label for="">Beneficiary Branch Name<span class="required">*</span></label>
                            <select name="vehicle_id">
                                <option value=""> Branch Name</option>
                                <?php echo $vehicle_list; ?>
                            </select>
                            
                        </div>
                        </div>

                    
                         <div class="form-item flex flex-col">
                            <label for="">Beneficiary Account Number<span class="required">*</span></label> 
                            <input type="text" name="last_name" placeholder="Last name" >   
                        </div>

                        <div class="form-item flex flex-col">
                            <label for="">Transfer Amount <span class="required">*</span></label> 
                            <input type="text" name="last_name" placeholder="Last name" >   
                        </div>


                        <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for="">Transfer On<span class="required">*</span></label>
                            <input type="date" name="date" placeholder="Date of the Accident">
                            
                        </div>

                        <div class="form-item flex flex-col">
                            
                            
                        </div>

                    </div>


                    <div class="form-item flex flex-col">
                            <label for=""> Remark <span class="required">*</span></label>
                            <input type="text" name="last_name" placeholder="Last name" > 
                            
                        </div>

            
                
                <div class="flex" style="margin-top: 10px">
                   <a href="fund-otp.jsp"> <button type="submit" name="submit" class="btn btn-primary" style="margin-right: 15px; width:100px"><a href="fund-otp.jsp">NEXT</a></button>
                    <button type="reset" class="btn btn-primary" style="margin-right: 15px; width:100px">Reset</button>
                </div>
            </form>
            
            </div>
        </div>
        </div>
        
    </div>
</body>
</html>
