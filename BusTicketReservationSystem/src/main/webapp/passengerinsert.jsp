<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Register</title>

<style>
	.border{
	  		padding: 20px 35px 20px 35px;
	  		border-radius: 25px;
	 		background-color: #f5f5f5;
	 		width: 1000px;
	 		margin: auto;
	}
		
	/* The message box is shown when the user clicks on the password field */
	#message {
	  display:none;
	  padding-left: 35px;
	}
	
	/* Add a green text color and a checkmark when the requirements are right */
	.valid {
		  color: green;
	}
	
	/*to make the password checking move to right*/
	p{
	padding-left: 35px;
	}
	
	
	.valid:before {
	  position: relative;
	  left: -35px;
	  content: "OK";
	}
	
	/* Add a red text color and an "x" when the requirements are wrong */
	.invalid {
	  color: red;
	}
	
	.invalid:before {
	  position: relative;
	  left: -35px;
	  content: "Invalid";
	}
</style>

</head>
<body>

    
    <% String msg = (String)request.getAttribute("msg");
		if(msg == "1"){
			%><div class="" id = "popupp">
			  <div class="alert alert-success alert-dismissible fade in">
			    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			    <strong>You successfully registered!</strong> Redirecting....<span id="timer">5</span>
			  
			  </div>
			</div>
			<script>
				var seconds = document.getElementById("timer").textContent;
				var countdown = setInterval(function() {
					seconds--;
					document.getElementById("timer").textContent = seconds;
					if (seconds <= 0)
						clearInterval(countdown);
				}, 1000);
		
				setTimeout(function() {
					window.location.href = 'homepage.jsp';
				}, 4000);
			</script>
			<%
		}%> 


<div class="container">
<div class="border">
  <h2>Passenger Registration</h2>
  <br>
  <form action="PassengerInsertServlet" method="post">
  
    <div class="form-group">
      <label for="fname">First Name:</label>
      <input type="text" class="form-control" id="fname" placeholder="Enter first name" name="fname" required>
    </div>
    
    <div class="form-group">
      <label for="lname">Last Name:</label>
      <input type="text" class="form-control" id="lname" placeholder="Enter last name" name="lname" required>
    </div>
    
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
    </div>
    
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Enter password" name="pwd" required>
    </div>
    
   	<div class="form-group">        
	  	<div id="message">
			  <h3>Password must contain the following:</h3>
			  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
			  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
			  <p id="number" class="invalid">A <b>number</b></p>
			  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
		</div>
	</div>
    
    <div class="form-group">
      <label for="pwd">Re-Enter Password:</label>
      <input type="password" class="form-control" id="pwd2" placeholder="Re-enter password" name="repwd" required>
    </div>
    
    <!-- <h6 id="mismatch"></h6>-->
    
     <div class="form-group">
      <label for="lname">Contact No:</label>
      <input type="text" class="form-control" id="telno" placeholder="Enter phone number" name="telno" required>
    </div>
 	
    <input type="submit" class="btn btn-primary" value="Register">   
  </form>
</div>
</div>
	

	
	<script>
		var myInput = document.getElementById("pwd1");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");
		
		// When the user clicks on the password field, show the message box
		myInput.onfocus = function() {
		  document.getElementById("message").style.display = "block";
		}
		
		// When the user clicks outside of the password field, hide the message box
		myInput.onblur = function() {
		  document.getElementById("message").style.display = "none";
		}
		
		// When the user starts to type something inside the password field
		myInput.onkeyup = function() {
		  // Validate lowercase letters
		  var lowerCaseLetters = /[a-z]/g;
		  if(myInput.value.match(lowerCaseLetters)) {  
		    letter.classList.remove("invalid");
		    letter.classList.add("valid");
		  } else {
		    letter.classList.remove("valid");
		    letter.classList.add("invalid");
		  }
		  
		  // Validate capital letters
		  var upperCaseLetters = /[A-Z]/g;
		  if(myInput.value.match(upperCaseLetters)) {  
		    capital.classList.remove("invalid");
		    capital.classList.add("valid");
		  } else {
		    capital.classList.remove("valid");
		    capital.classList.add("invalid");
		  }
		
		  // Validate numbers
		  var numbers = /[0-9]/g;
		  if(myInput.value.match(numbers)) {  
		    number.classList.remove("invalid");
		    number.classList.add("valid");
		  } else {
		    number.classList.remove("valid");
		    number.classList.add("invalid");
		  }
		  
		  // Validate length
		  if(myInput.value.length >= 8) {
		    length.classList.remove("invalid");
		    length.classList.add("valid");
		  } else {
		    length.classList.remove("valid");
		    length.classList.add("invalid");
		  }
		}
	</script>
	
</body>
</html>