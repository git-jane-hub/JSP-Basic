<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie [] cookies = request.getCookies();
	String str = null;
	String id = null;
	boolean b = false;
	for(Cookie c : cookies){
		str = c.getName();
		if(str.equals("loginOk")){
			id = c.getValue();
			out.println("<h2>Welcome :) " + id + "!</h2>");
			b = true;
			break;
		}
	}
	if(!b){
		out.println("time out:(");
	}
%>
