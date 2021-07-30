<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 접속 시 요청 방법
	String protocol = request.getProtocol();
	// 프로젝트 이름
	String conPath = request.getContextPath();
	// 전체 파일의 경로(페이지의 주소)
	StringBuffer reqUrl = request.getRequestURL();
	// 파일 경로에서 입력한 값(페이지 주소 뒤에 입력한 값)
	String reqUri = request.getRequestURI();
	// 이용한 포트번호
	int serverPort = request.getServerPort();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request 객체 테스트</title>
</head>
<body>
	요청 프로토콜: <%= protocol %><br>
	요청 컨텍스트 경로: <%= conPath %><br>
	요청 URL: <%= reqUrl %><br>
	요청 URI: <%= reqUri %><br>
	서버 포트: <%= serverPort %><br>
</body>
</html>