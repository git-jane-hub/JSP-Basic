<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>How to make dessert? - choose recipe</title>
</head>
<body>
	<h2>What do you want to make dessert?</h2>
	<form action = "R06.jsp" method = "get">
		<input type = "radio" name = "dessert" value = "honeycomb" />Honey Comb<br>
		<input type = "radio" name = "dessert" value = "croissant" />Croissant<br>
		<input type = "radio" name = "dessert" value = "cheesecake" />Cheese cake<br>
		<input type = "radio" name = "dessert" value = "cremebrulee" />Creme Brulee<br>
		<input type = "submit" value = "Yummy :)" />
	</form>
</body>
</html>