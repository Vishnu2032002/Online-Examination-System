<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    
    <title>QUIZ REGISTRATION</title>
</head>
<body>
    <!--Materialize CSS for Home Page Design-->
   
    <nav class="nav-wrapper black">
    	<div class="container">
    		<a href="#home.jsp" class="brand-logo center">QUIZ</a>
    	
    	 </div>
    </nav>
	<section class="container section">
	<% String email_id = request.getParameter("email_id"); %>
		<div class="row">
		<div class="col s12 12 offset-13">
		
		<form class="myform" name="id" onsubmit="submitted(event)">
			<h4 class="center0align white-text">CONTESTENT NAME</h4>
			
			<div  class="progress red">
			<div class="indeterminate"></div>
			
		</div>
		<div class="input-field">
			<i class="material-icons white-text" >account_box</i>
			<input type="text" class="white-text prefix" id="name" required>
			<label for="name">Name Here</label>
			<br><br><p class="center"><button type="submit" class="btn red" onclick="this.style.display='none'">Submit</button></p>
			
			
		</div>
		<div>  
			<p class="white-text green" align="center"><b>QUIZ RULES</b></p>
			<h5 class="black-text white">CANNOT GO BACK TO PREVIOUS QUESTIONS</h5>
			<h5 class="black-text white">SCORE WILL BE ANNOUNCED FINALLY</h5>
		</div>
		<div class="progress red">
			<div class="indeterminate"></div>
		</div>
			<p class="center"><a href="quiz1.jsp?email_id=<%= email_id %>" class="btn red">Let's Start </a></p>
		</form>
		</div>
		</div>
	</section>
<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script>
	function submitted(e)
	{
		e.preventDefault();
		let namee=document.forms["id"]["name"].value;
		sessionStorage.setItem("name",namee);
		
		
	}
</script>
 
</body>
</html>