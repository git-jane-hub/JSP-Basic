<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이동 실패</title>
</head>
<body>
	<h2>검색을 하지 못하게 되었습니다.</h2>
	<%
		int move = (int)(Math.random() * 4);
		if(move == 0){
			response.sendRedirect("http://www.naver.com");
		}else if(move == 1){
			response.sendRedirect("http://www.google.com");
		}else if(move == 2){
			response.sendRedirect("http://www.daum.net");
		}
	%>
</body>
</html>