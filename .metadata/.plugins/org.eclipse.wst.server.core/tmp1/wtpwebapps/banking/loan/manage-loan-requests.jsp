<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="config.dbconnect" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Beneficiaries</title>
    <link rel="stylesheet" href="../assets/style.css">
</head>
<body>

    <jsp:include page="../inc/header.jsp" />
    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />
        <div class="flex-col content-wrapper">
        <h2 class="mb-4">Loan Requests</h2>

        <!-- Table for displaying loan requests -->
        <table class="table table-hover table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Full Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Loan Amount</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over the loan requests using JSTL -->
              
                    <tr>
                        <td>${request.id}</td>
                        <td>${request.fullName}</td>
                        <td>${request.email}</td>
                        <td>${request.phone}</td>
                        <td>${request.loanAmount}</td>
                        <td>
                            <button class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#viewModal" onclick="viewLoan(${request.id})">
                                <i class="fas fa-eye"></i> View
                            </button>
                            <a href="update-request-loan.jsp?id=${request.id}" class="btn btn-warning btn-sm">
                                <i class="fas fa-edit"></i> Update
                            </a>
                            <button class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#deleteModal" onclick="confirmDelete(${request.id})">
                                <i class="fas fa-trash-alt"></i> Delete
                            </button>
                        </td>
                    </tr>
               
            </tbody>
        </table>
    </div>

  


    
</body>
</html>
