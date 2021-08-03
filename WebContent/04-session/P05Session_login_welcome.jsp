<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션에 저장된 데이터를 얻어서 아래 body에서 출력
	String id = (String)session.getAttribute("session_id");
	String nick = (String)session.getAttribute("session_nickname");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<%-- 본 파일 & P06Session_logout.jsp 수정하기  --%>
	<%
		String n = null;
		// session이 만료되어 해당 세션이 null 값이 되면 세션을 파기하고 로그아웃 페이지로 이동
		if(id != n){
			out.println("<h3>" + nick + "(" + id + ")님 환영합니다.</h3>");
		}else if(id == n){
			session.invalidate();
			out.println("<a href = \"P06Session_logout.jsp\">로그아웃 하기</a>");
		}
	%>
		<%-- 페이지 include: 다른 페이지의 소스코드를 그대로 현재 페이지에 붙여넣어줄 때 쓰는 문법 --%>
		<%@ include file = "P01Application_basic.jsp" %>
</body>
</html>