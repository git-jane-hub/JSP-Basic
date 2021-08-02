<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int total = 0;
	public int each = 0;
	public String luckColor;
	public int pickNumber(){
		int luckNumber = (int)(Math.random() * 10) + 1;
		return luckNumber;
	}
	public String pickColor(){
		double numColor = Math.random();
		if(numColor >= 0.66){
			return "빨강";
		}else if(numColor >= 0.33){
			return "노랑";
		}else{
			return "파랑";
		}
	}
%>
<%
	each = 0;	// 새로고침 때마다 0으로 초기화
	total++;
	each++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Web Programming</h2>
	<p>
		페이지 누적 요청 수:<%= total %>,
		페이지 개별 요청 수:<%= each %>
	</p>
	<h3>오늘의 행운 숫자와 행운 색깔</h3>
	<p>
		행운의 숫자: <b><%= pickNumber() %></b><br>
		행운의 색깔: <i><%= pickColor() %></i>
	</p>
</body>
</html>