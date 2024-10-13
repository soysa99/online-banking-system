<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Beneficiary</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>
    <jsp:include page="../inc/header.jsp" />
    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />
        <div class="flex-col content-wrapper">
            <ul class="bredcrumb">
                <li><a href="../home/home.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="manage-beneficiary.jsp">Manage Beneficiaries</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li>Add Beneficiary</li>
            </ul>
            <div class="container">
                <h2 class="text-center">Add Beneficiary</h2>
                <form action="<%= request.getContextPath() %>/AddBeneficiary" method="post">
                    <div class="flex flex-col">
                        <div class="form-item flex flex-col">
                            <label for="beneficiaryName">Beneficiary Name<span class="required">*</span></label>
                            <input type="text" id="beneficiaryName" name="beneficiaryName" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="accountNo">Account Number<span class="required">*</span></label>
                            <input type="text" id="accountNo" name="accountNo" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="bank">Bank<span class="required">*</span></label>
                            <input type="text" id="bank" name="bank" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="branch">Branch<span class="required">*</span></label>
                            <input type="text" id="branch" name="branch" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="nickname">Nickname<span class="required">*</span></label>
                            <input type="text" id="nickname" name="nickname" required>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="accountType">Account Type<span class="required">*</span></label>
                            <select id="accountType" name="accountType" required>
                                <option value="">Select</option>
                                <option value="Savings">Savings</option>
                                <option value="Current">Current</option>
                            </select>
                        </div>
                        <div class="form-item flex flex-col">
                            <label for="beneficiaryType">Beneficiary Type<span class="required">*</span></label>
                            <select id="beneficiaryType" name="beneficiaryType" required>
                                <option value="">Select</option>
                                <option value="Family">Family</option>
                                <option value="Friend">Friend</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Beneficiary</button>
                    </div>
                </form>
                <a href="manage-beneficiary.jsp" class="btn btn-secondary">Back to Manage Beneficiaries</a>
            </div>
        </div>
    </div>
</body>
</html>
