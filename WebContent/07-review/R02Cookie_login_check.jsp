<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.setCharacterEncoding("utf-8");
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
		if(id.equals("abc") && pw.equals("abc")){
			Cookie user = new Cookie("user", id);
			// 쿠키 유효시간 지정 후 반영
			user.setMaxAge(20);
			response.addCookie(user);
			if(id_remem.equals("yes")){
				Cookie id_memory = new Cookie("id_remember", id_remem);
				// 쿠키 유효시간 지정 후 반영
				id_memory.setMaxAge(20);
				response.addCookie(id_memory);
			}
			if(pw_remem.equals("yes")){
				Cookie pw_memory = new Cookie("pw_remember", pw_remem);
				// 쿠키 유효시간 지정 후 반영
				pw_memory.setMaxAge(20);
				response.addCookie(pw_memory);
			}
			response.sendRedirect("R03Cookie_login_welcome.jsp");
		}else{
			out.pritnln("로그인에 실패했습니다.");
			out.println("<a href = \"R01Cookie_login_form.jsp\">로그인 창으로 이동</a>");
		}
	%>
</body>
</html>