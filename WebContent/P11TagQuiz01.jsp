<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 선생님 답안 --%>
<%!
	/* Declaration
	전역변수, 메서드 선언 시 사용 */
	public int total = 0;
	public int pickNumber(){
		int luckNumber = (int)(Math.random() * 10) + 1;
		return luckNumber;
	}
	public String pickColor(){
		double luckColor = Math.random();
		if(luckColor >= 0.66){
			return "빨강";
		}else if(luckColor >= 0.33){
			return "노랑";
		}else{
			return "파랑";
		}
	}
%>
<%
	/* Scriptlet
	지역변수, 메인 메서드 내부의 코드를 작성하는 태그
	페이지 요청이 발생할 때마다 실행할 로직 작성 */
	int each = 0;
	total++;
	each++;
	String luckColor = pickColor();
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
	<p>
		<h3>오늘의 행운의 숫자와 행운의 색깔</h3>
		행운의 숫자: <b><%= pickNumber() %></b><br>
		행운의 색깔: <i><%= luckColor %></i>
	</p>
</body>
</html>