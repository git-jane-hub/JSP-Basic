<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*  세션은 쿠키와 마찬가지로 http 통신 데이터를 유지하기 위한 수단으로 사용
		세션에 데이터를 저장할 때는 JSP 내장객체인 session이 지원하는 setAttribute("세션명", "세션값")을 사용
		해당 메서드의 첫 번째 파라미터로 세션명을 정해주고 두 번째 파라미터로 세션에 저장한 데이터를 정해줌*/
		session.setAttribute("id_session", "abc1234");
		session.setAttribute("name_session", "Nick");
		session.setAttribute("JSP", "Spring framework");
		// session.setMaxInactiveInterval(3600);	// 1시간 - 유효시간은 개별로 저장되지 않고 뭉쳐서 하나로 저장됨
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "P01Session_check.jsp">세션 확인하기</a>
</body>
</html>