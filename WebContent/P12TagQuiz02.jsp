<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int total = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tag_QUIZ02</title>
</head>
<body>
	페이지 누적 요청 수: <%= total %><br>
	매 10번째 방문자에게는 기프티콘을 드립니다.<br>
	<%
		if(total % 10 == 0){
			out.println("당첨되셨습니다.!!!<br>");
		}
		total++;
		out.println("<hr>");
		int dan = (int)(Math.random() *  8) + 2;
		out.println("<h2>랜덤 구구단(" + dan + "단)</h2>");
		out.println("<p>이번에 나온 구구단은 " + dan + "단 입니다." + "</p>");
		for(int num = 1; num < 10; num++){
			out.println(dan + " X " + num + " = " + (dan * num) + "<br>");			
	}
	%>
</body>
</html>