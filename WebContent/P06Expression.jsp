<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String name = "김철수";
	public int age = 20;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression</title>
</head>
<body>
	<p>
	<%
		out.println("이름: " + name + "<br>");
		out.println("나이: " + age + "<br>");
	%>
	</p>
	<p>
		이름: <%= name %><br>
		나이: <%= age %><br>
	</p>
</body>
</html>