<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String loginOk = (String)session.getAttribute("id_session");
	if(loginOk != null){
		id = loginOk;
	}else{
		if(id.equals("abc") && pw.equals("abc")){
			session.setAttribute("id_session", id);
			session.setAttribute("pw_session", pw);
		}else{
			response.sendRedirect("R05.jsp");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 완료</title>
</head>
<body>
	<h2><%= id %>님 로그인이 완료되었습니다.</h2><hr>
	<a href = "R06.jsp">로그아웃하기</a>
</body>
</html>