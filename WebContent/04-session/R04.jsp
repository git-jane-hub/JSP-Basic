<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String nickname = request.getParameter("nickname");
	String pw = request.getParameter("pw");
	
	if(id.equals("abc") && pw.equals("abc")){
		session.setAttribute("session_id", id);
		session.setAttribute("session_", nickname);
		session.setAttribute("id", pw);
		session.setMaxInactiveInterval(30);
		response.sendRedirect("R05.jsp");
	}else{
		out.println("로그인에 실패했습니다.");
		out.println("<br><a href = \"R03.jsp\">로그인 창으로 이동</a>");
	}
%>