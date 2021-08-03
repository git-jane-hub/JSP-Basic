<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 가장 처음으로 만든 로그인창 -->
<%
	// 서버에서 발급한 모든 쿠키 요청
	Cookie [] cookies = request.getCookies();
	String userId = null;
	for(Cookie c : cookies){
		String s = c.getName();
		// 쿠키 name 값 중 "user_login"와 같은 값이 있다면
		if(s.equals("user_login")){
			userId = c.getValue();
			break;
		}
	}
	// 쿠키의 유효시간이 남아있는 경우
	if(userId != null){
		out.println(userId + "님 환영합니다.");
	}else{
		out.println("시간이 지나 자동 로그아웃 되었습니다.");
		out.println("<a href = \"R01_login_form.jsp\">다시 로그인</a>");
	}
%>
