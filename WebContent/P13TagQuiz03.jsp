<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	int [] lotto = new int[45];
	int tmp = 0;
	int num = 0;
%>
<%
	for(int a = 0; a < 45; a++){
		lotto[a] = a + 1;
	}
	for(int a = 0; a < 6; a++){
		num = (int)(Math.random() * 45);
		tmp = lotto[a];
		lotto[a] = lotto[num];
		lotto[num] = tmp;
	}
	Arrays.sort(lotto, 0, 6);
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lotto 추첨기</title>
</head>
<body>
	<h2>로또번호 생성 결과</h2>
	<p>
		<span>이번주 로또 번호</span><br>
		<%
			for(int a = 0; a < 6; a++){
				out.println(lotto[a] + " ");
			}
		%>
	</p>
</body>
</html>