<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie [] cookies = request.getCookies();
	String cookieName = null;
	String cookieValue = null;
	boolean still = false;
	for(Cookie c : cookies){
		cookieName = c.getName();
		if(cookieName.equals("peanut_cookie")){
			cookieValue = c.getValue();
			out.println("I have " + cookieName + " of " + cookieValue + ":)<br>");
			still = true;
			break;
		}
	}
	if(!still){
		out.println("I don't have peanut cookie :(.<br>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>