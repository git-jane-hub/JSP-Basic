<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원천징수 세금 계산기</title>
</head>
<body>
	<h2>당신의 실수령액은?</h2>
	<form action = "R05.jsp">
		소득세 3%와 지방소득세 0.3%로 총 3.3%가 원천징수되어 차감됩니다.<br>
		<input type = "text" name = "salary" placeholder = "급여 입력" required >원<br>
		<input type = "submit" value = "계산해보기" >
		<input type = "reset" value = "초기화" ><br>
	</form>
</body>
</html>