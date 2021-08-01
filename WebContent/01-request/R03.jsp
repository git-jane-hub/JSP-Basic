<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String nickName = request.getParameter("nickname");
	String password = request.getParameter("password");
	String gender = request.getParameter("gender");
	String marriage = request.getParameter("marriage");
	String region = request.getParameter("region");
	String [] hobby = request.getParameterValues("hobby");
	String [] specialty= request.getParameterValues("specialty");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수신</title>
</head>
<body>
	<h2>당신의 정보</h2>
	이름: <%= id %><br>
	별명: <%= nickName %><br>
	비번: <%= password %><br>
	성별: <%= gender %><br>
	혼인: <%= marriage %><br>
	지역: <%= region %><br>
	취미: <% for(String hob : hobby){
				out.println(hob + " ");
			}
		%><br>
	특기: <% for(String spe : specialty){
				out.println(spe + " ");
			}
	%><br>
</body>
</html>