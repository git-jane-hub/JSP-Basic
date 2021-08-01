<%@ page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//	전송받은 한글 데이터가 method = "post"에서 깨지지 않도록 처리
		request.setCharacterEncoding("UTF-8");

	/*	P02Req_param_send의 form 태그에서 전달한 데이터를 받기 위해서 
		request.getParameter("name값")을 활용 
		name = "id"/ "nick" / "pw"에서 전달한 데이터를 받기 위해 */
		String id = request.getParameter("id");	// id에 들어있는 데이터를 id라는 변수에 저장
		String nick = request.getParameter("nick");
		String pw = request.getParameter("pw");
	
	//	String hobby = request.getParameter("hobby");
	/*	체크박스는 복수의 데이터가 전달될 수 있기 때문에 배열로 값을 구하기위해
		request.getParameterValues("name 값"); 을 사용 */
		String [] hobby = request.getParameterValues("hobby");
		String [] specialty = request.getParameterValues("specialty");
		
	//	선택지가 하나만 나오는 radio는 배열을 생성할 필요가 없음
		String gender = request.getParameter("gender");
		String marriage = request.getParameter("marriage");
		String region = request.getParameter("region");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체 파라미터 수신 예제</title>
</head>
<body>
	아이디: <b><%= id %></b><br>
	닉네임: <b><%= nick %></b><br>
	비밀번호: <b><%= pw %></b><br>
	취미: 
	<% for(String name : hobby){ %>
	<b><%= name %></b>
	<% } %><br>
	특기: 
	<% for(String name : specialty){ %>
	<b><%= name %></b>
	<% } %><br>
	성별: <b><%= gender %></b><br>
	결혼: <b><%= marriage %></b><br>
	지역: <b><%= region %></b><br>
<%-- 	
	취미: 
	<b><%= Arrays.toString(hobby) %></b><br>
--%>
</body>
</html>