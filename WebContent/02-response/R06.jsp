<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String dessert = request.getParameter("dessert");
	if(dessert.equals("honeycomb")){
		response.sendRedirect("R07.jsp");
	}else if(dessert.equals("croissant")){
		response.sendRedirect("R08.jsp");
	}else if(dessert.equals("cheesecake")){
		response.sendRedirect("R09.jsp");
	}else if(dessert.equals("cremebrulee")){
		response.sendRedirect("R10.jsp");
	}
%>