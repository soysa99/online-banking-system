<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard | Your Road to Safety and Savings</title>
   <link rel="stylesheet" href="../assets/style.css">
    <!--font awesome-->
    <script src="https://kit.fontawesome.com/72fb3712df.js" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>
    
    <style>
	    #calendar {
	      width: 100%;
		  margin: 0 auto;
		  padding: 10px;
		  background-color: #fff;
		  border: 1px solid #ddd;
		}
    </style>
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

		<div class=" flex-col content-wrapper">
            <ul class="bredcrumb">
                <li><a href="dashboard.php">Home</a></li>
            </ul>

            <div class="flex m-10 m-10">   
                <div id="calendar"></div>
            </div> 
        </div>
	</div>
   
<script>
      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });

    </script>
</body>

</html>