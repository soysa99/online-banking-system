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

        <div class="flex-col content-wrapper m-10">

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

                    <h3 class="m-10">Bill Details</h3>

                    <form id="billPaymentForm">
                        <div class="flex flex-col">
                            <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="AccountNo">From Account Number <span class="required">*</span></label>
                                    <input type="text" id="AccountNo" name="AccountNo" placeholder="AccountNo">
                                </div>
                            </div>

                            <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="payeeCategory">Payee category<span class="required">*</span></label>
                                    <select id="payeeCategory" name="PayeeCategory" onchange="updateProviders()">
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
                                <label for="BillAccountNo">Billing Number<span class="required">*</span></label>
                                <input type="number" id="BillAccountNo" name="BillAccountNo" placeholder="BillAccountNo">
                            </div>

                            <div class="form-item flex flex-col">
                                <label for="Amount">Amount LKR <span class="required">*</span></label>
                                <input type="number" id="Amount" name="Amount" placeholder="Amount">
                            </div>

                            <div class="flex flex-row form">
                                <div class="form-item flex flex-col">
                                    <label for="PaymentDate">Payment Date<span class="required">*</span></label>
                                    <input type="date" id="PaymentDate" name="PaymentDate" placeholder="PaymentDate">
                                </div>
                            </div>

                            <div class="flex" style="margin-top: 10px">
                                <button type="button" class="btn btn-primary" style="margin-right: 15px; width:100px" onclick="showSummary()">NEXT</button>
                                <button type="reset" class="btn btn-primary" style="margin-right: 15px; width:100px">Reset</button>
                            </div>
                        </div>
                    </form>

                    <div id="summarySection" style="margin-top: 20px; display: none;">
    <h3>Summary</h3>
    <br>
    <p><strong>From Account Number:</strong> <span id="summaryAccountNo"></span></p>
    <p><strong>Payee Category:</strong> <span id="summaryPayeeCategory"></span></p>
    <p><strong>Service Provider:</strong> <span id="summaryServiceProvider"></span></p>
    <p><strong>Billing Number:</strong> <span id="summaryBillAccountNo"></span></p>
    <p><strong>Amount LKR:</strong> <span id="summaryAmount"></span></p>
    <p><strong>Payment Date:</strong> <span id="summaryPaymentDate"></span></p>
    <div class="flex" style="margin-top: 20px;">
        <button type="button" class="btn btn-primary" style="margin-right: 15px; width:150px" onclick="requestOtp()">Request OTP</button>
    </div>
</div>

<!-- Moved otpSection outside summarySection -->
<div id="otpSection" style="margin-top: 20px; display: none;">
    <h3>OTP Request</h3>
    <div class="form-item flex flex-col">
        <label for="otpInput">Enter OTP<span class="required">*</span></label>
        <input type="number" id="otpInput" placeholder="Enter OTP" style="width: 200px;">
    </div>
    <div class="flex" style="margin-top: 10px;">
        <button type="button" class="btn btn-primary" style="margin-right: 15px; width:150px" onclick="requestOtp()">Resend OTP</button>
        <button type="button" class="btn btn-primary" style="margin-right: 15px; width:150px" onclick="confirmOtp()">Confirm OTP</button>
    </div>
</div>

<script>
    function requestOtp() {
        const accountNo = document.getElementById('AccountNo').value;

        if (!accountNo) {
            alert('Please enter your Account Number before requesting OTP.');
            return;
        }

        alert('OTP Requested Successfully');
        // Show OTP section
        document.getElementById('otpSection').style.display = 'block';
        // Scroll to OTP section for better user experience
        document.getElementById('otpSection').scrollIntoView({ behavior: 'smooth' });
    }

    function confirmOtp() {
        const enteredOtp = document.getElementById('otpInput').value;

        if (!enteredOtp) {
            alert('Please enter the OTP.');
            return;
        }

        alert('OTP Confirmed Successfully');
    }

    function showSummary() {
        const form = document.getElementById('billPaymentForm');
        const summarySection = document.getElementById('summarySection');

        document.getElementById('summaryAccountNo').textContent = form.AccountNo.value;
        document.getElementById('summaryPayeeCategory').textContent = form.PayeeCategory.options[form.PayeeCategory.selectedIndex].text;
        document.getElementById('summaryServiceProvider').textContent = form.ServiceProvider.options[form.ServiceProvider.selectedIndex]?.text || "N/A";
        document.getElementById('summaryBillAccountNo').textContent = form.BillAccountNo.value;
        document.getElementById('summaryAmount').textContent = form.Amount.value;
        document.getElementById('summaryPaymentDate').textContent = form.PaymentDate.value;

        summarySection.style.display = 'block';
        summarySection.scrollIntoView({ behavior: 'smooth' });
    }
</script>



<script>
    async function requestOtp() {
        const accountNo = document.getElementById('AccountNo').value;

        if (!accountNo) {
            alert('Please enter your Account Number before requesting OTP.');
            return;
        }

        try {
            // Make an AJAX request to the backend to generate and fetch the OTP
            const response = await fetch('generateOtp.jsp', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ accountNo })
            });

            const data = await response.json();

            if (data.success) {
                alert(OTP has been sent successfully. Your OTP is: ${data.otp});
                document.getElementById('otpSection').style.display = 'block';
            } else {
                alert(data.message || 'Error generating OTP.');
            }
        } catch (error) {
            console.error('Error:', error);
            alert('Failed to request OTP. Please try again later.');
        }
    }

    async function confirmOtp() {
        const enteredOtp = document.getElementById('otpInput').value;
        const accountNo = document.getElementById('AccountNo').value;

        if (!enteredOtp) {
            alert('Please enter the OTP.');
            return;
        }

        try {
            const response = await fetch('confirmOtp.jsp', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ accountNo, otp: enteredOtp })
            });

            const data = await response.json();

            if (data.success) {
                alert('OTP confirmed successfully.');
                // Proceed to the next step
            } else {
                alert(data.message || 'Invalid OTP.');
            }
        } catch (error) {
            console.error('Error:', error);
            alert('Failed to confirm OTP. Please try again later.');
        }
    }
</script>

                    
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

        function showSummary() {
            const form = document.getElementById('billPaymentForm');
            const summarySection = document.getElementById('summarySection');

            document.getElementById('summaryAccountNo').textContent = form.AccountNo.value;
            document.getElementById('summaryPayeeCategory').textContent = form.PayeeCategory.options[form.PayeeCategory.selectedIndex].text;
            document.getElementById('summaryServiceProvider').textContent = form.ServiceProvider.options[form.ServiceProvider.selectedIndex]?.text || "N/A";
            document.getElementById('summaryBillAccountNo').textContent = form.BillAccountNo.value;
            document.getElementById('summaryAmount').textContent = form.Amount.value;
            document.getElementById('summaryPaymentDate').textContent = form.PaymentDate.value;

            summarySection.style.display = 'block';
            summarySection.scrollIntoView({ behavior: 'smooth' });
        }
    </script>
    
    
    
    
</body>

</html>