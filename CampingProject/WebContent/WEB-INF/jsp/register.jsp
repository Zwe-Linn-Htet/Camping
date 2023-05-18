<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Register Page</title>
	<link rel=" stylesheet" href="bs/css/bootstrap.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  
	<style>
        
		body {
			background-image: url('image/GoldenTeak.jpg');
			
			background-size: cover;
			height: 100;
			margin: 0;
			padding: 0;
			display: flex;
			justify-content: center;
			align-items: center;
		}
		.container {
			backdrop-filter: blur(5px);
			border-radius: 40px;			
			padding: 70px;
			box-shadow: 0px 0px 10px #000;
		}
		h2 {
			text-align: center;
			margin-bottom: 30px;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2 style="color:whitesmoke">Customer Registration </h2>
		<form onsubmit ="return validateForm()">
            <div class="form-group">
				<label  style="color:whitesmoke" for="username">UserName:</label>
				<input type="Text" class="form-control" id="name" placeholder="Enter Username"  value="" >
				<span id = "blankMsg" style="color:red" font-size="500px"> </span> 
			</div>
			<div class="form-group">
				<label style="color:whitesmoke"  for="email">Email address:</label>
				<input type="email" class="form-control" id="email" placeholder="Enter email"  value="" >
				<span id = "blankEmail" style="color:red"> </span>
			</div>
            <div class="form-group">
				<label  style="color:whitesmoke" for="phno">Phone Number:</label>
				<input type="tel" class="form-control" id="phno" placeholder="Enter Your Phone number"  value="" >
				<span id = "blankphno" style="color:red"> </span>
			</div>
            <div class="form-group">
				<label  style="color:whitesmoke" for="pwd">Password:</label>
				<input type="password" class="form-control" id="pswd1" placeholder="Password"  value="">
				<span id = "message1" style="color:red"> </span> 
			</div>
            <div class="form-group">
				<label  style="color:whitesmoke" for="pwd">Confirm Password:</label>
				<input type="password" class="form-control" id="pswd2" placeholder="Confirm Password" value="">
				<span id = "message2" style="color:red"> </span>
			</div>
			<div onclick="redirectFunction()">
			<br><button type="submit" class="btn btn-primary" value="submit">Submit</button>
		</div>
			</form>
	</div>
	<script>
		function validateForm() {
			//collect form data in JavaScript variables
			var pw1 = document.getElementById("pswd1").value;
			var pw2 = document.getElementById("pswd2").value;
			var name1 = document.getElementById("name").value;
			var email = document.getElementById("email").value;
			var phno = document.getElementById("phno").value;
			
			//check empty first name field
			if(name1 == "") {
			  document.getElementById("blankMsg").innerHTML = "**Fill the name";
			  return false;
			}
			//check empty email field
			if(email == "") {
			  document.getElementById("blankEmail").innerHTML = "**Fill the eamil";
			  return false;
			}
			//check empty Phnumber field
			if(phno == "") {
			  document.getElementById("blankphno").innerHTML = "**Fill the PhoneNumber";
			  return false;
			}
			//character data validation
			if(!isNaN(name1)){
			  document.getElementById("blankMsg").innerHTML = "**Only characters are allowed";
			  return false;
			}
		  
			//check empty password field
			if(pw1 == "") {
			  document.getElementById("message1").innerHTML = "**Fill the password please!";
			  return false;
			}
		  
			//check empty confirm password field
			if(pw2 == "") {
			  document.getElementById("message2").innerHTML = "**Enter the password please!";
			  return false;
			} 
		   
			//minimum password length validation
			if(pw1.length < 8) {
			  document.getElementById("message1").innerHTML = "**Password length must be atleast 8 characters";
			  return false;
			}
		
			//maximum length of password validation
			if(pw1.length > 15) {
			  document.getElementById("message1").innerHTML = "**Password length must not exceed 15 characters";
			  return false;
			}
		  
			if(pw1 != pw2) {
			  document.getElementById("message2").innerHTML = "**Passwords are not same";
			  return false;
			} 
			else {
				alert ("Your password created successfully");
				location.href="camping.html"
            }
			}	
					
			
		</script>
</body>
</html>