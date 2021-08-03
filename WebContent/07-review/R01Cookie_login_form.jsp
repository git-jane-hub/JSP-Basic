<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie [] cookies = request.getCookies();
	
	// 아이디와 비밀번호 기억하기에 체크가 되어있으면 아이디를 자동으로 입력해줄 변수도 생성
	String userId = "";
	String userPw = "";
	

	for(Cookie c : cookies){
		String s = c.getName();
		if(s.equals("user")){
			response.sendRedirect("R03Cookie_login_welcome.jsp");
		}
		// 쿠키 조회에서 아이디와 비밀번호 값 추출
		if(s.equals("id_remember")){
			userId = c.getValue();
		}
		if(s.equals("pw_remember")){
			userPw = c.getValue();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "R02Cookie_login_check.jsp" method = "post">
		<input type = "text" name = "id" placeholder = "ID" value = "<%= userId %>" required />
		<input type = "checkbox" name = "id_remem" value = "yes" />ID 기억하기<br>
		<input type = "password" name = "pw" placeholder = "PASSWORD" value = "<%= userPw %>" required />
		<input type = "checkbox" name = "pw_remem" value = "yes" />PASSWORD 기억하기<br>
		<input type = "submit" value = "LOGIN"/><br>
	</form>
</body>
</html>