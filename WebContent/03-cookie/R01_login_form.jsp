<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	
	// 향상된 for문에서 간헐적으로 에러 발생 - cookies 배열을 생성하는 시간보다 for문이 먼저 실행됨 - Thread.sleep()으로 시간 약간 지연
	Thread.sleep(200);

	String userId = "";
	String userPw = "";
	/*
	System.out.println(cookies);
	System.out.println(cookies == null);
	*/
	for(Cookie c: cookies){
		String s = c.getName();
		// 이미 로그인 한 사람이 로그인창으로 방문하면 완료창으로 이동시켜주는 쿠키 작성
		if(s.equals("user_login")){
			response.sendRedirect("R03_login_welcome.jsp");
		}
		// 아이디와 비밀번호 기억 - 기억하기 위해 생성한 쿠키의 name 값 
		if(s.equals("remem_id")){
			userId = c.getValue();	// 사용자가 input에 입력한 값 -id
		}
		if(s.equals("remem_pw")){
			userPw = c.getValue();	// 사용자가 input에 입력한 값 -pw
		}
	}
	/*
	System.out.println(userId);
	System.out.println(userPw);
	*/
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login form</title>
</head>
<body>
	<form action = "R02_login_check.jsp" method = "post">
		<input type = "text" name = "id" placeholder = "ID" value = "<%= userId %>" required />
		<input type = "checkbox" name = "id_remem" value = "yes" />ID 기억하기<br>
		<input type = "password" name = "pw" placeholder = "PASSWORD" value = "<%= userPw %>" required />
		<input type = "checkbox" name = "pw_remem" value = "yes" />PW 기억하기<br>
		<input type = "submit" value = "LOGIN" /><br>
	</form>
</body>
</html>