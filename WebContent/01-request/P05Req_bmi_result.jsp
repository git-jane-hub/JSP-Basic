<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	/*	getParameter는 항상 String으로만 반환됨
		String으로 반환된 값을 int와 double로 변환하려면
		정수: Integer.parseInt(request.getParameter("name 값")); 
		실수: Double.parseDouble(request.getParameter("name 값")) */
	double height = Double.parseDouble(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	double bmi = (double)weight / ((height * 0.01) * (height * 0.01)); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 지수 결과 값</title>
</head>
<body>
	<h2>BMI 계산 웹 어플리케이션</h2><hr>
	<p>
		- 신         장: <%= height %> cm<br>
		- 체         중: <%= weight %> kg<br>
	</p>
	<p>
		BMI 지수: <b><%= bmi %></b><br>
	<%
		if(bmi > 23){
			out.println("<b>당신은 과체중입니다.</b><br>");
		}else if(bmi < 18.5){
			out.println("<b>당신은 저체중입니다.</b><br>");
		}else{
			out.println("<b>당신은 정상체중입니다.</b><br>");
		}
	%>
	</p>
</body>
</html>