<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tag_QUIZ01</title>
</head>
<body>
	<%-- 페이지 누적요청 수: 요청이 들어올 때마다 1씩 증가
		  개별 요청수: 1로 고정
		  행운숫자: 1이상 11미만 난수
		  행운색깔: 0.0이상 1.0미만 난수 --%>
	<%!	
		public int each;
		public int total = 0;
		public int luckNumber;
		public double luckColor;
		public String pickLuck(){
			each = 0;
			total++;
			each++;
			// 난수를 새로고침할 때마다 받으려면 반복문 내부에 작성해야함 - 아님, 스크립틀릿 내부에 작성해야함(수정 필요)
			while(true){
				luckNumber = (int)(Math.random() * 10) + 1;
				luckColor = (Math.random());
				if(luckColor > 0.66){
					return "빨강";
				}else if(luckColor >= 0.33){
					return "노랑";
				}else{
				return "파랑";
				}
			}
		}
	%>
	<h2>Web 프로그래밍</h2>
페이지 누적 요청수: <%= total %>, 페이지 개별 요청수: <%= each %>
	<h3>오늘의 행운의 숫자와 행운의 색깔</h3>
행운의 숫자: <b><%= luckNumber %></b><br>
행운의 색깔: <i><%= pickLuck() %></i>
</body>
</html>