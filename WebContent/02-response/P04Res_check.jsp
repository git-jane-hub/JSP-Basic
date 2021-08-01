<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int age = Integer.parseInt(request.getParameter("age"));
%>
<%-- redirect만을 위해서 만들어진 페이지이기 때문에 HTML 코드가 필요 없음 --%>
<%
	if(age <= 19){
		response.sendRedirect("P05Res_no.jsp");
	}else{
		response.sendRedirect("P06Res_ok.jsp");
	}
%>
