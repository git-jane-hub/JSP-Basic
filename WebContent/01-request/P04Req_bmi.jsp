<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 지수 계산기</title>
</head>
<body>
	<form action="P05Req_bmi_result.jsp" method = "post">
		<input type = "text" name = "height" placeholder = "신장" size = "10px" required/>&nbsp;cm<br>
		<input type = "text" name = "weight" placeholder = "체중" size = "10px" required/>&nbsp;kg<br>
		<input type = "submit" name = "제출" value = "BMI 지수 확인하기" /><br>
	</form>
</body>
</html>