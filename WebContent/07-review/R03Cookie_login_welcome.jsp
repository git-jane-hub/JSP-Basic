<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie [] cookies = request.getCookies();
	// id를 담을 변수에 null 값으로 초기화
	String userId = "";
	for(Cookie c: cookies){
		String s = c.getName();
		if(s.equals("user")){
			userId = c.getValue();
			break;
		}
	}
	if(userId != null){
		out.println(userId + "님 환영합니다.");
	}else{
		out.println("자동 로그아웃되었습니다.");
		out.println("<a href = \"R01Cookie_login_form.jsp\">로그인 창으로 이동</a>");
	}
%>
