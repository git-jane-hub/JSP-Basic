<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!	
	final int NUM1 = 11;
	final int NUM2 = 22;
	public boolean trueOrFalse(int num1, int num2){
		return num1 >= num2;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>True or False</title>
</head>
<body>
	<p>
		<% out.println("스크립트릿으로 출력된 값: <b>" + trueOrFalse(NUM1, NUM2) + "</b><br>"); %>
		표현식으로 출력된 값: <b><%= trueOrFalse(NUM1, NUM2) %></b>
	</p>
</body>
</html>