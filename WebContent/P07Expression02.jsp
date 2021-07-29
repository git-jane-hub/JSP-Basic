<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원의 넓이 구하기</title>
</head>
<body>
	<%-- Math.PI는 원주율을 나타내는 자바 클래스 --%>
	<%!
		double radius;
		public double areaCircle(double radius){
			return (radius * radius) * Math.PI;
		}
	%>
	<b>반지름이 5인 원의 넓이:</b> <%= areaCircle(5) %>cm^2
</body>
</html>