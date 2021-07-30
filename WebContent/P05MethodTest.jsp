<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 섭씨: celsius
	 화씨: fahrenheit
	(f - 32) / 1.8 = c 
	f = (c * 1.8) + 32 
--%>
<%!
	public double celcius = 33.0;
	public double cToF(double celcius){
		return (celcius * 1.8) + 32;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화씨 온도 계산기</title>
</head>
<body>
	<p>
	<%
		out.println("<h2>오늘 현재 홍대입구의 온도</h2>");
		out.println("섭씨 온도: <b>" + celcius + "</b><br>");
		out.println("화씨 온도: <b>" + cToF(celcius) + "</b>");
	%>
	</p>
</body>
</html>