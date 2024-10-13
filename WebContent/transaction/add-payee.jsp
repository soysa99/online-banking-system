<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Transfer  | Your Road to Safety and Savings</title>
    <link rel="stylesheet" href="../assets/style.css">
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


    <div class=" flex-col content-wrapper">


<ul class="bredcrumb">
<li><a href="../home/home.jsp">Home</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="fund-transfer.php">Fund Transfer Services</a></li>
    <li><i class="fa-solid fa-chevron-right"></i></li>
    <li><a href="add-payee.jsp">Add Favorite Payee</a></li>
</ul>



    <div class="container">
        <div class="cardG flex-col">
            <h2 class="text-center">Favorite Payee</h2>


            <h3 class="m-10">Add Favorite Beneficiary Form</h3>

<form action="<%= request.getContextPath() %>/AddPayee" method="POST">

                <div class="flex flex-col">
                 
                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for=""> Beneficiary Account Number <span class="required">*</span></label>
                            <input type="text" name="PayeeAccountNo" placeholder="PayeeAccountNo" required>
                              
                        </div>

                        <div class="form-item flex flex-col">
                            <label for=""> Beneficiary Name<span class="required">*</span></label>
                            <input type="text" name="PayeeName" placeholder="PayeeName" required>
                              
                        </div>
                    </div>

                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for=""> Beneficiary Nickname <span class="required">*</span></label>
                            <input type="text" name="PayeeNickname" placeholder="PayeeNickname" required>
                             
                        </div>
                    </div>


                    <div class="flex flex-row form">
                        <div class="form-item flex flex-col">
                            <label for="">  Bank Name <span class="required">*</span></label>                            
                            <select name="Bank" placeholder="Bank" required>
                              <option value="">Select the Bank</option>
							  <option value="BOC">Bank of Ceylon (BOC)</option>
							  <option value="PeoplesBank">People's Bank</option>
							  <option value="CommercialBank">Commercial Bank of Ceylon</option>
							  <option value="HNB">Hatton National Bank (HNB)</option>
							  <option value="SampathBank">Sampath Bank</option>
							  <option value="NSB">National Savings Bank (NSB)</option>
							  <option value="SeylanBank">Seylan Bank</option>
							  <option value="NationsTrustBank">Nations Trust Bank</option>
							  <option value="DFCC">DFCC Bank</option>
							  <option value="UnionBank">Union Bank of Colombo</option>
							  <option value="AmanaBank">Amana Bank</option>
							  <option value="PanAsiaBank">Pan Asia Bank</option>
							  <option value="CargillsBank">Cargills Bank</option>
							  <option value="SCB">Standard Chartered Bank (Sri Lanka)</option>
							  <option value="HSBC">HSBC (Sri Lanka)</option>
							</select> 
                        </div>

                        <div class="form-item flex flex-col">
                            <label for=""> Branch<span class="required">*</span></label>
                            <select name="Branch" placeholder="Branch" required>
                             <option value="">Select the Branch</option>
							  <option value="ColomboMain">Colombo Main Branch</option>
							  <option value="Kandy">Kandy Branch</option>
							  <option value="Nugegoda">Nugegoda Branch</option>
							  <option value="Negombo">Negombo Branch</option>
							  <option value="Galle">Galle Branch</option>
							  <option value="Kurunegala">Kurunegala Branch</option>
							  <option value="Matara">Matara Branch</option>
							  <option value="Jaffna">Jaffna Branch</option>
							  <option value="Batticaloa">Batticaloa Branch</option>
							  <option value="Ratnapura">Ratnapura Branch</option>
							  <option value="Maharagama">Maharagama Branch</option>
							  <option value="Anuradhapura">Anuradhapura Branch</option>
							  <option value="Badulla">Badulla Branch</option>
							  <option value="Avissawella">Avissawella Branch</option>
							  <option value="Panadura">Panadura Branch</option>
							  <option value="Kalutara">Kalutara Branch</option>
							  <option value="Chilaw">Chilaw Branch</option>
							  <option value="Vavuniya">Vavuniya Branch</option>
							  <option value="Trincomalee">Trincomalee Branch</option>
							  <option value="Gampaha">Gampaha Branch</option>
							</select>
                        </div>
                    </div>
                
                <div class="flex" style="margin-top: 10px">
                    <button type="submit" name="submit" class="btn btn-primary" style="margin-right: 10px;">Confirm</button>
                    <button type="reset" class="btn btn-primary">Reset</button>
                </div>
                 </div>
                
            </form>
            
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

   <script>
    document.addEventListener('DOMContentLoaded', function() {
        const closeButton = document.getElementById('close-message');
        const successMessage = document.getElementById('success-message');

        if (closeButton && successMessage) {
            closeButton.addEventListener('click', function() {
                successMessage.style.opacity = '0'; // Fade out
                setTimeout(function() {
                    successMessage.style.display = 'none'; // Hide after fade out
                }, 500); // Match the timeout with CSS transition duration
            });
        }
    });
</script>
</body>
</html>
