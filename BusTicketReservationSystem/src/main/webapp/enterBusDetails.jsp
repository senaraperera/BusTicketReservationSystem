<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="container">    
	<form action="enterBusDetailsServlet" method="POST">
	<div class="form-group">
	Bus No. : <input type="text" id="number" name="number" required></div><br>
	<div class="form-group">
	Number of seats : <input type="text" id="no.ofseats" name="seat" pattern="[0-5][0-9]" required></div><br>
	
	<div class="form-group">
	Bus Type :
	<input type="radio" id="luxury" name="btype" value="LUXURY" checked>
  	<label for="luxury">LUXURY</label><br>
  	<input type="radio" id="semi-luxury" name="btype" value="SEMI-LUXURY">
  	<label for="semi-luxury">SEMI-LUXURY</label><br>
  	<input type="radio" id="blabla" name="btype" value="BLABLA">
  	<label for="blabla">BLABLA</label><br>
	</div>
	
	<div class="form-group">
	<input type="radio" id="AC" name="ac/nonac" value="AC" checked>
  	<label for="AC">AC</label>
  	<input type="radio" id="NON-AC" name="ac/nonac" value="NON-AC">
  	<label for="NON-AC">NON-AC</label><br>
	</div>
	

  	
  	<br><br><br>
  	
  	<div class="form-group">
  	<input type="submit" value="Submit">
	</div>
	</form>
</div>	
</body>
</html>