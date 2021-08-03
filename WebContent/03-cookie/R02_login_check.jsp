<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String id_remem = request.getParameter("id_remem");
	String pw_remem = request.getParameter("pw_remem");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(id.equals("abc1234") && pw.equals("aaa1111")){
			// 쿠키 생성1: 로그인 처리 - name 값인 "user_login" 쿠키는 로그인이 성공했을 때만 생성됨
			Cookie loginCookie = new Cookie("user_login", id);
			loginCookie.setMaxAge(60 * 30);	// 20초가 지나면 자동 로그아웃
			response.addCookie(loginCookie);
			
			// 쿠키 생성2: 아이디 기억
			if(id_remem != null && id_remem.equals("yes")){
				Cookie idMemory = new Cookie("remem_id", id);
				idMemory.setMaxAge(20);
				response.addCookie(idMemory);
			}
			// 쿠키 생성3: 비밀번호 기억
			if(pw_remem != null && pw_remem.equals("yes")){
				Cookie pwMemory = new Cookie("remem_pw", pw);
				pwMemory.setMaxAge(20);
				response.addCookie(pwMemory);
			}
			response.sendRedirect("R03_login_welcome.jsp");
		}else{
			out.println("로그인에 실패했습니다.");
		}
	%>
</body>
</html>