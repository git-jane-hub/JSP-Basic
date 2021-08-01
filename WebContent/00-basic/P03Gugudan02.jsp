<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 홀수 출력 예제</title>
</head>
<body>
	<% for(int a = 2; a < 10; a++){
		if(a % 2 == 1){
			out.print("<h2>구구단 " + a + "단</h2><hr>");
				for(int b = 1; b < 10; b++){ 
					out.println(a + " * " + b + " = " + (a * b) + "<br>"); 
	 			}
		}
	}; %>
</body>
</html>