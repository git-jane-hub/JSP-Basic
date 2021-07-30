<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int i = 15;
	public String str = "Hi :)";
	int add (int n1, int n2){
		return n1 + n2;
	}
	int result = 10;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declaration</title>
</head>
<body>
	<p>
	<%
		// public int j = 50;	// 스크립트릿 내부에서는 접근 제한자 변수 선언 불가 
		out.println(str + "<br>");
		out.println("10 + 5 = " + i + "<br>");
		out.println("16 + 14 = " + add(16, 14) + "<br>");
		out.println(result);
	%>
	</p>
</body>
</html>