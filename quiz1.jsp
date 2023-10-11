<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="quiz-final.css">
    <title>Quiz-Page</title>
</head>
<body>
    <!--QUIZ-QUESTION--> 

	<% String email_id = request.getParameter("email_id"); %>
	<div id="myElement1" data-jsp-variable="<%= email_id %>"></div>
	
    <div class="wrapper">
        <div class="quiz">
            <div class="quiz_header">
                <div class="quiz_user">
                    <h4>WELCOME  <span class="name"></span></h4>
                </div>
            </div>

            <div class="quiz_body12">
                <div id="questions">

               <!--  <ul class="option_group">
              <li class="option">option 1</li>
              <li class="option">option 2</li>
              <li class="option">option 3</li>
              <li class="option">option 4</li>
              </ul> -->
                </div>

                <button class="btn-next" onClick="next()">Next Question</button>
            </div>
        </div>
    </div>

    <script src="quiz1.js"></script>
    <script src="user1.js"></script>
</body>
</html>