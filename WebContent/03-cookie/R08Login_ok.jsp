<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String remem = request.getParameter("remem_idpw");
	
	if(id.equals("abc") && pw.equals("abc")){
		Cookie loginOk = new Cookie("loginOk", id);
		loginOk.setMaxAge(30);
		response.addCookie(loginOk);
		if(remem != null && remem.equals("yes")){
			Cookie rememid = new Cookie("rememid", id);
			Cookie remempw = new Cookie("remempw", pw);
			rememid.setMaxAge(60 * 60);
			remempw.setMaxAge(60 * 60);
			response.addCookie(rememid);
			response.addCookie(remempw);
		}
		response.sendRedirect("R06Login_welcome.jsp");
	}else{
		out.println("login failed<br><a href = \"R07Login_form.jsp\">move to Login</a>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>
</head>
<body>
	
</body>
</html>
