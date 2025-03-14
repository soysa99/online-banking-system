<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Setting | Your Road to Safety and Savings</title>
    <link rel="stylesheet" href="../assets/style.css">
    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
</head>

<body>
    
    <jsp:include page="../inc/header.jsp" />

    <div class="flex">
        <jsp:include page="../inc/acc-dash.jsp" />

        <div class=" flex-col content-wrapper m-10">
            <ul class="bredcrumb">
                <li><a href="dashboard.jsp">Home</a></li>
                <li><i class="fa-solid fa-chevron-right"></i></li>
                <li><a href="index.jsp">Settings</a></li>
            </ul>

            <div class="flex m-10 m-10">
               

                    <a class="dash_box" href="index.jsp">
                        <i class="fa-solid fa-gear fa-4x"></i>
                        <h3 class="m-10 bold">Settings</h3>
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
