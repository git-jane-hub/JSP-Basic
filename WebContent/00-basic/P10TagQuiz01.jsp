<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 페이지 누적요청 수: 요청이 들어올 때마다 1씩 증가
	 개별 요청수: 1로 고정
	 행운숫자: 1이상 11미만 난수
	 행운색깔: 0.0이상 1.0미만 난수 --%>
<%!	
	 public int each;
	 public int total = 0;
	 public int luckNumber;
	 public String luckColor;
%>
<%
		each = 0;
		total++;
		each++;
		luckNumber = (int)(Math.random() * 10) + 1;
		double num = (Math.random());
		if(num > 0.66){
			luckColor =  "빨강";
		}else if(num >= 0.33){
			luckColor = "노랑";
		}else{
			luckColor = "파랑";
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tag_QUIZ01</title>
</head>
<body>
	<h2>Web 프로그래밍</h2>
	<p>
		페이지 누적 요청수: <%= total %>, 페이지 개별 요청수: <%= each %>
	</p>
	<h3>오늘의 행운의 숫자와 행운의 색깔</h3>
		행운의 숫자: <b><%= luckNumber %></b><br>
		행운의 색깔: <i><%= luckColor %></i>
</body>
</html>