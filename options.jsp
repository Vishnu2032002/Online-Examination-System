<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="options.css">
    <style>
    body
    {
    	background-image:url("zip.jpg");
    }
    
    </style>
  </head>
  <body>
  
<div class="container">
<h1 align="center" class="header">QUIZ LIST</h1>
	<% String email_id = request.getParameter("email_id"); %>
	<div class="btn btn1">
  		<a href="home.jsp?email_id=<%= email_id %>" style="color:black"><b>Computer Hardware Based Questions</b></a>
 	 </div>
 	 <div class="btn btn2">
  		<a href="home1.jsp?email_id=<%= email_id %>" style="color:black"><b>Aptitude Reasoning Questions</b></a>
 	 </div>
  	<div class="btn btn3">
  		<a href="home2.jsp?email_id=<%= email_id %>" style="color:black"><b>Programming Based Questions</b></a>
  	</div>
  	
	  
 </div>
  </body>
</html>
    