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

<!-- Include Header JSP -->
    <jsp:include page="../inc/header.jsp" />
<div class="flex">

    
<jsp:include page="../inc/acc-dash.jsp" />

    <div class=" flex-col content-wrapper">


<ul class="bredcrumb">
                <li><a href="../home/home.jsp">Home</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="index.jsp">Bill Payment Services</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="add-billpayee.jsp">Add Favorite Bill Payee</a></li>
</ul>



    <div class="container">
        <div class="cardG flex-col">
            <h2 class="text-center">Favorite Bill Payee</h2>


            <h3 class="m-10">Add Favorite Bill Form</h3>

            <form action="add-billpayee.php" method="post">

                <div class="flex flex-col">
                 


                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                        <label for="">Payee category<span class="required">*</span></label>
                            <select name="Payee category">
                                <option value="">Select Payee category</option>
                                <?php echo $vehicle_list; ?>
                            </select>

                        </div>

                        <div class="form-item flex flex-col">
                        <label for=""> Service Provider<span class="required">*</span></label>
                            <select name="Service Provider">
                                <option value="">Select Service Provider</option>
                                <?php echo $vehicle_list; ?>
                            </select>
                            
                        </div>
                    </div>



                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for=""> Payee Account Number (billing Number) <span class="required">*</span></label>
                            <input type="number" name="Payee Account Number" placeholder="Payee Account Number">
                             
                        </div>

                        <div class="form-item flex flex-col">
                            <label for=""> <span class="required"></span></label>
                           
                        </div>
                    </div>


                    <div class="flex flex-row form">
                    <div class="form-item flex flex-col">
                            <label for=""> Payee Description<span class="required">*</span></label> 
                            <input type="text" name="Description" placeholder="Description " >   
                        </div>
                    </div>
            
                
                <div class="flex" style="margin-top: 10px">
                    <button type="submit" name="submit" class="btn btn-primary" style="margin-right: 10px;">Confirm</button>
                    <button type="reset" class="btn btn-primary">Reset</button>
                </div>
            </form>
            
            </div>
        </div>
        </div>
        
    </div>
</body>
</html>
