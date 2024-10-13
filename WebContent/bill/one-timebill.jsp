<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Fund Transfer | Your Road to Safety and Savings</title>
        <link rel="stylesheet" href="../assets/style.css">
        <!--font awesome-->
        <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
    </head>

    <body>
    
    <% 
	if (session.getAttribute("name") == null) {
		response.sendRedirect("../login.jsp");
		return;
	}
%>

        <!-- Include Header JSP -->
        <jsp:include page="../inc/header.jsp" />

        <div class="flex">

            <jsp:include page="../inc/acc-dash.jsp" />

            <div class=" flex-col content-wrapper m-10">


                <div class=" flex-col content-wrapper">


                    <ul class="bredcrumb">
                        <li><a href="../home/home.jsp">Home</a></li>
                        <li><i class="fa-solid fa-chevron-right"></i></li>
                        <li><a href="fund-transfer.php">Bill Payment Services</a></li>
                        <li><i class="fa-solid fa-chevron-right"></i></li>
                        <li><a href="one-timebill.php">One Time Bill Payment</a></li>
                    </ul>



                    <div class="container">
                        <div class="cardG flex-col">


                            <h2 class="text-center">One Time Bill Payment</h2>




                            <h3 class="m-10 m-10">Bill Details</h3>

                            <form action="OneTimeBill" method="post">

                                <div class="flex flex-col">

                                    <div class="flex flex-row form">

                                        <div class="form-item flex flex-col">
                                            <label for=""> From Account Number <span class="required">*</span></label>
                                            <input type="text" name="AccountNo" placeholder="FAccountNo">

                                        </div>

                                    </div>


                                    <div></div>
                             <div class="flex flex-row form">
                            <div class="form-item flex flex-col">
                            
                                <label for="payeeCategory">Payee category<span class="required">*</span></label>
                                <select name="PayeeCategory" id="payeeCategory" onchange="updateProviders()">
                                    <option value="">Select Payee category</option>
                                    <option value="electricity">Electricity</option>
                                    <option value="water">Water Bill</option>
                                    <option value="telecommunications">Telecommunications</option>
                                    <option value="insurance">Insurance</option>
                                    <option value="housing">Housing</option>
                                    <option value="other">Other Bill Payment</option>
                                </select>
                            </div>

                            <div class="form-item flex flex-col">
                                <label for="serviceProvider">Service Provider<span class="required">*</span></label>
                                <select id="serviceProvider" name="ServiceProvider">
                                    <option value="">Select Service Provider</option>
                                </select>
                            </div>
                        </div>

                                    <div class="form-item flex flex-col">
                                        <label for="">Billing Number<span class="required">*</span></label>
                                        <input type="number" name="	BillAccountNo" placeholder="BillAccountNo">
                                    </div>

                                    <div class="form-item flex flex-col">
                                        <label for=""> Amount LKR <span class="required">*</span></label>
                                        <input type="number" name="	Amount" placeholder="	Amount">
                                    </div>


                                    <div class="flex flex-row form">
                                        <div class="form-item flex flex-col">
                                            <label for="">Payment Date<span class="required">*</span></label>
                                            <input type="date" name="PaymentDate" placeholder="PaymentDate">

                                        </div>

                                        <div class="form-item flex flex-col">


                                        </div>

                                    </div>

                                    <div class="flex" style="margin-top: 10px">
                                         <a href="otp.jsp" class="btn btn-primary" style="margin-right: 15px; width:100px">NEXT</a> 

                                        <button type="reset" class="btn btn-primary"
                                            style="margin-right: 15px; width:100px">Reset</button>
                                    </div>

                                </div>  

                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>
        
        <script>
    const providers = {
        electricity: ["Ceylon Electricity Board (CEB)"],
        water: ["National Water Supply and Drainage Board (NWSDB)"],
        telecommunications: ["Dialog Axiata", "Mobitel", "Hutch"],
        insurance: ["Sri Lanka Insurance Corporation", "Janashakthi Insurance"],
        housing: [], 
        other: [] 
    };

    function updateProviders() {
        const category = document.getElementById('payeeCategory').value;
        const providerSelect = document.getElementById('serviceProvider');

        // Clear previous options
        providerSelect.innerHTML = '<option value="">Select Service Provider</option>';

        if (providers[category]) {
            providers[category].forEach(provider => {
                const option = document.createElement('option');
                option.value = provider;
                option.textContent = provider;
                providerSelect.appendChild(option);
            });
        }
    }
</script>
    </body>

    </html>