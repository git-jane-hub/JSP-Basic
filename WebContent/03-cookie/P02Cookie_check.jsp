<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 클라이언트에 저장된 쿠키를 조회하는 방법
		request.getCookie(); 호출시 response.addCookie()로 발급된 쿠키 중
		해당 서버가 발급한 쿠키 전체 목록을 불러옴 */
	Cookie[] cookies = request.getCookies();	// 유효기간이 지나면 쿠키가 해당 목록에서 사라짐 (20초가 지나면 땅콩 쿠키는 사라짐)
	String str = null;
	boolean flag = false;
	for(int i = 0; i < cookies.length; i++){
		str = cookies[i].getName();
		System.out.println(str);
		// 특정 쿠키의 정보만 가져오고 싶을 때는 아래 구문을 사용 
		if(str.equals("peanut_cookie")){
			out.println("땅콩 쿠키가 존재합니다.<br>");
			String value = cookies[i].getValue();
			out.println("저장된 자료는 " + value + "입니다.");
			flag = true;
			break;
		}
	}
	if(!flag){
		out.println("땅콩 쿠키가 사라졌습니다.<br>");
	}
%>