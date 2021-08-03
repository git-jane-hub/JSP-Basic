<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 요청하는 데이터와 전달하는 데이터 모두 한글 깨지지 않게 처리
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	// P03Session_login.jsp에서 id, nickname, pw를 전달받음
	String id = request.getParameter("id");
	String nickname = request.getParameter("nickname");
	String pw = request.getParameter("pw");
	
	// id와 pw가 일치하면 session에 각 데이터를 저장하고 P05Session_login_welcome.jsp로 이동
	if(id.equals("kkk1234") && pw.equals("1111")){
		session.setAttribute("session_id", id);
		session.setAttribute("session_nickname", nickname);
		session.setAttribute("session_pw", pw);
		// logout 테스트 시간 조정
		session.setMaxInactiveInterval(15);
		response.sendRedirect("P05Session_login_welcome.jsp");
	}else{
		response.sendRedirect("P03Session_login.jsp");
	}
%>
