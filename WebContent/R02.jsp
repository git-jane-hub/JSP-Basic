<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int total = 0;
	public int dan;
%>
<%
	dan = (int)(Math.random() * 8) + 2;
	total++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		페이지 누적 요청 수: <%= total %><br>
		매 10번째 방문자에게는 기프티콘을 드립니다.<br>
		<%
			if(total % 10 == 0){
				out.println("당첨되셨습니다.!!!<br>");
			}
			out.println("<hr>");
		%>
	</p>
	<h2>랜덤 구구단(<%= dan %>단)</h2>
	<p>
		이번에 나온 구구단은 <%= dan %>단입니다.<br>
	</p>	
	<p>
		<%
			for(int num = 1; num < 10; num++){
				out.println(dan + " X " + num + " = " + (dan * num) + "<br>");
			}
		%>
	</p>
</body>
</html>