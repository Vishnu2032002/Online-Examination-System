<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="model.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	<script type = "text/javascript"   
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">  
	</script>

    <title>Login page</title>
    <style>
    	.loader {
			  border: 10px solid #ffffff;
			  border-radius: 50%;
			  border-top: 10px solid #000000;
			  width: 20px;
			  height: 20px;
			  -webkit-animation: spin 1s linear infinite; /* Safari */
			  animation: spin 1s linear infinite;
			  margin-left:150px;
			  margin-top:15px
		}
			
			/* Safari */
		@-webkit-keyframes spin {
			  0% { -webkit-transform: rotate(0deg); }
			  100% { -webkit-transform: rotate(360deg); }
		}
			
		@keyframes spin {
			  0% { transform: rotate(0deg); }
			  100% { transform: rotate(360deg); }
		}
		.box1{
			margin-top:-150px;
			margin-left:37.6%
		}
    </style>

</head>

<body>
<form id="getOtpId">
   <div class="box">
    <div class="container">
	<br>
        <div class="top">
            
            <header><h2>EMAIL OTP</h2></header>
        </div>

        <div class="input-field">
            <input type="text" class="input" id="mail" placeholder="EMAIL ID" required />
            <i class='bx bx-user'style="color:black" ></i>
        </div>
        <div class="input-field">
        	<input type="submit" class="submit" value="GET OTP" />
        </div>
<div class="loader"></div>

        </br>
        
    </div>
</div>
</form> 
<form  id="setOtpId" >
   <div class="box1">
    <div class="container">
        <div class="input-field">
            <input type="text" class="input" id="otp" placeholder="ENTER OTP" required />
            <i class='bx bx-lock-alt' style="color:black"></i>
        </div>
        <br>

        <div class="input-field">
            <b><input type="submit" class="submit" value="Submit" >
        </div></br>
       </div>
       </div>
</form>
	<script src="OTP_valid.js"></script>
 
</body>
</html>



    