<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 서버에서 발급한 전체 쿠키 목록을 가져오는 코드 작성
	Cookie[] cookies = request.getCookies();
	String userId = null;
	
	// 향상된 for문을 이용하여 처리
	for(Cookie c : cookies){
		String s = c.getName();
		if(s.equals("user_id")){
			// 쿠키 이름이 user_id인 경우, 쿠키의 값을 userId 변수에 저장(자동 로그인에 관여된 쿠키)
			userId = c.getValue();
			break;
		}				
	}
	if(userId != null){
		out.println(userId + "님 환영합니다.");
	}else{
		out.println("시간이 지나 자동 로그아웃 되었습니다.");
		/* 역슬래시를 사용하는 이유:
			컴퓨터가 자바 코드 따옴표 내부의 html 태그 따옴표를 헷갈려함 - \"의 의미는 여닫는 용도가 아닌 문자로써 인식하게 함 */
		out.println("<a href = \"P04Cookie_login.jsp\">다시 로그인하기</a>");
	}
%>