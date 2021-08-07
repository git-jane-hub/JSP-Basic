<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 클라이언트에 저장된 쿠키를 조회하는 방법
		request.getCookie(); 호출시 response.addCookie()로 발급된 쿠키 중
		해당 서버가 발급한 쿠키 전체 목록을 불러옴 */
	Cookie[] cookies = request.getCookies();	// 유효기간이 지나면 쿠키가 해당 목록에서 사라짐 (20초가 지나면 땅콩 쿠키는 사라짐)
	String cookieName = null;
	String cookieValue = null;
	boolean still = false;
	for(Cookie cookieInfo : cookies){
		cookieName = cookieInfo.getName();
		if(cookieName.equals("peanut_cookie")){
			out.println("I have peanut cookie:).<br>");
			cookieValue = cookieInfo.getValue();
			out.println("The peanut cookie is " + cookieValue + ".");
			still = true;
			break;
		}
	}
	if(!still){
		out.println("I don't have peanut cookie :(.<br>");
	}
%>