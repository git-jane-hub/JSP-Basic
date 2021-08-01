<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String conPath = request.getContextPath();
	String method = request.getMethod();
	String server = request.getServerName();
	int port = request.getServerPort();
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	String ip = request.getRemoteAddr();
	String protocol = request.getProtocol();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		컨텍스트 경로: <%= conPath %><br>
		요청 방식: <%= method %><br>
		서버 이름: <%= server %><br>
		포트 번호: <%= port %><br>
		요청 URL: <%= url %><br>
		요청 URI: <%= uri %><br>
		IP 주소: <%= ip %><br>
		프로토콜: <%= protocol %><br>
	</p>
</body>
</html>