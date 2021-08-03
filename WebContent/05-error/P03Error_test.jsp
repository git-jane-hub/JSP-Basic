<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- isErrorPage의 주소값을 넣어줌 --%>
<%@ page errorPage = "P02Error_page.jsp" %>
<%
	int a = 3/0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	나누기의 결과 값은 <%= a %>입니다.
</body>
</html>