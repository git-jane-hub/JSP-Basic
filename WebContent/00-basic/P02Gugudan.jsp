<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력 예제</title>
</head>
<body>
	<%-- out.print 내부에 HTML 코드를 작성하고 그 사이에 변수를 넣어줄 수 있음  --%>
	<% for(int a = 2; a < 10; a++){
		out.print("<h2>구구단 " + a + "단</h2><hr>");
			for(int b = 1; b < 10; b++){ 
				out.println(a + " * " + b + " = " + (a * b) + "<br>"); 
	 		}
		}; %>
</body>
</html>