
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

<div class="topnav">
  <a class="active" href="../dashboard/index.jsp">Home</a>
  <a href="index.jsp">News</a>
  <a href="#contact">Contact us</a>
  <a href="#about">About us</a>
</div>




<div class="header">
    <div class="logo">
        <img src="../img/logo.png" alt="Trust Wave">
    </div>

    <div class="navbar">
    
        <a href="index.php">Personal & Business</a>
        <a href="contact-us.php">Rates & Charges</a>
        <a href="about-us.php">Cards</a>
        <a href="login.jsp">Digital Banking</a>
		<%
	      if(session.getAttribute("name") != null){
	    	  %>
	    	  	<a href="#">Welcome, <%= request.getSession().getAttribute("name") %>!</a>
	    	  	<a href="../logout.jsp">Logout</a>
	    	  <%
	      }
	    %>
    </div>
</div>

	
</body>
</html>
