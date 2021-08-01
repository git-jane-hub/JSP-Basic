<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미성년자 체크</title>
</head>
<body>
	<form action = "P04Res_check.jsp" method = "get" >
		당신의 나이를 입력해주세요.<br>
		<input type = "text" name = "age" placeholder = "나이" size = "3px" required />
		<input type = "submit" value = "미성년자인지 확인하기" />
	</form>
</body>
</html>