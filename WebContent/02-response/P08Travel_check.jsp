<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String spot = request.getParameter("spot");

	if(spot.equals("newyork")){
		response.sendRedirect("P09Travel_Newyork.jsp");
	}else if(spot.equals("sydney")){
		response.sendRedirect("P09Travel_Sydney.jsp");
	}else if(spot.equals("hongkong")){
		response.sendRedirect("P09Travel_Hongkong.jsp");
	}else if(spot.equals("bankok")){
		response.sendRedirect("P09Travel_Bankok.jsp");
	} %>
