<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행 안내 페이지</title>
</head>
<body>
	<h2>관심있는 도시</h2>
	<form action = "P08Travel_check.jsp" method = "post">
		<input type = "radio" name = "spot" value = "newyork">뉴욕<br>
		<input type = "radio" name = "spot" value = "sydney">시드니<br>
		<input type = "radio" name = "spot" value = "hongkong">홍콩<br>
		<input type = "radio" name = "spot" value = "bankok">방콕<br>
		<input type = "submit" value = "도시정보 알아보기">
	</form>
</body>
</html>