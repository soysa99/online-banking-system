<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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

        <div class=" flex-col content-wrapper m-10">

<style>
   
        .service-card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

    </style>

            <ul class="bredcrumb">
                <li>Home</li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="account.jsp">General Services</a></li>
            </ul>

            <div class="flex m-10 m-10">
                <div class="dash_container m-10  ">

                      <a class="dash_box" href="general-services.jsp">
                        <i class="fa-solid fa-file-invoice fa-4x"></i>
                        <h3 class="m-10 bold">General Services</h3>
                    </a>

             
                 </div>
      
       </div>            

    </div>
    </div>
