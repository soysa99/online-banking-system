<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>One Time Bill Payment OTP</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>

<body>

<% 
	if (session.getAttribute("name") == null) {
		response.sendRedirect("../login.jsp");
		return;
	}
%>

<jsp:include page="../inc/header.jsp" />

<div class="flex">
    <jsp:include page="../inc/acc-dash.jsp" />

    <div class="container">
        <div class="cardG flex-col">
            
           <h2>One Time Bill Payment Summary</h2>
           
          
	<ul>
    <li>From Account Number: </li>
    <li>Billing Account Number:</li>
    <li>Payee Category: </li>
    <li>Service Provider:</li>
    <li>Amount LKR:</li>
    <li>Payment Date: </li>
</ul>


            <div class="m-10">
                <h3>Request OTP</h3>
                <form action="otp.jsp" method="post">
                    <div class="form-item flex-col">
                        <label>Delivery Method:</label><br>
                        <input type="radio" id="sms" name="deliveryMethod" value="SMS" checked>
                        <label for="sms">SMS</label>
                        <input type="radio" id="email" name="deliveryMethod" value="EMAIL">
                        <label for="email">EMAIL</label>
                    </div>

                    <button type="submit" class="btn btn-primary">Request OTP</button>
                </form>

                <div class="form-item flex-col">
                    <label>OTP:</label>
                    <input type="text" name="otp" placeholder="Enter OTP">
                </div>

                <button type="submit" class="btn btn-primary">Confirm</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>
