<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String region = request.getParameter("region");
	String [] hobby = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름: <%= name %><br>
	성별: <%= gender %><br>
	지역: <%= region %><br>
	취미: <%
			for(String hob : hobby){
				out.println(hob);
			}
		%><br>
</body>
</html>