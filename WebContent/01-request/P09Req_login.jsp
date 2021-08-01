<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loginId = request.getParameter("loginId");
	String loginPw = request.getParameter("loginPw");
%>
<!DOCTYPE html>
<html>
	<!-- if 구문 열고 닫을 때, 중괄호 입력에서 에러 많이 발생 - 유의 -->
	<% if(loginId.equals("abcd") && loginPw.equals("1234")){ %>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<b><%= loginId %></b>님 환영합니다.
</body>

	<% }else if(!loginId.equals("abcd")){ %>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>
	<b>로그인에 실패했습니다.<br>아이디가 없습니다.<br><a href = "P08Req_login_form.jsp">로그인창으로 이동</a></b>
</body>

	<% }else if(!loginPw.equals("1234")){ %>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>
	<b>로그인에 실패했습니다.<br>비밀번호가 다릅니다.<br><a href = "P08Req_login_form.jsp">로그인창으로 이동</a></b>
</body>

	<% } %>
</html>