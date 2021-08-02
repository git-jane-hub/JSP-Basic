<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 로그인 창을 만든 이후에 이미 로그인한 사람이 로그인창으로 방문하면
		바로 로그인 완료창으로 보내주는 코드 작성  */
		Cookie[] cookies = request.getCookies();
		String userId = "";
		String userPw = "";
		/* cookies 변수에는 여러 쿠키가 들어있음
			반복문을 이용해 번갈아가면서 c에 하나씩 대입 */
		for(Cookie c : cookies){ 
			// 개별 쿠키의 이름을 cookieName 변수에 저장 
			String cookieName = c.getName();
			// 저장한 쿠키의 이름이 "remember_id" 인 경우 
			if(cookieName.equals("remember_id")){
				// userId 변수에 remember_id 변수에 저장해둔 로그인 아이디를 저장 
				userId = c.getValue();
			}
			// 저장한 쿠키의 이름이 "remember_pw" 인 경우 
			if(cookieName.equals("remember_pw")){
				// userPw 변수에 remember_pw 변수에 저장해둔 로그인 아이디를 저장 
				userPw = c.getValue();
			}
		}
		System.out.println(userId);
	// 만약 id/pw 기억하기가 체크되어 있는 경우 처리해주기 위해 쿠키에서 아이디와 비밀번호 값을 추출하는 로직 작성 	
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "P05Cookie_login_ok.jsp" method = "post">
		 <input type = "text" name = "id" placeholder = "ID" value = " <%= userId %>" />
		 <!-- 체크박스를 이용해서 자동로그인 여부 체크 -->
		 <input type = "checkbox" name = "id_check" value = "yes" />remember ID<br>
		 <input type = "password" name = "pw" placeholder = "PASSWORD" value = <%= userPw %>/>
		 <input type = "checkbox" name = "pw_check" value = "yes" />remember PW<br>
		 <input type = "submit" value = "LOGIN" /><br>
	</form>
</body>
</html>