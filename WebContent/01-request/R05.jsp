<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	double salary = Double.parseDouble(request.getParameter("salary"));
	double salaryAfterTax = salary - (salary * 0.033);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원천징수 세금 계산기 - 결과</title>
</head>
<body>
	<h2>당신의 실수령액은?</h2><hr>
	<p>
	급여: <%= salary %>원<br>
	실수령액: <%= salaryAfterTax %>원
	</p>
</body>
</html>