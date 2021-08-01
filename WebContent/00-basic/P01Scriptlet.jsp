<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scriptlet</title>
</head>
<body>
	<% for(int i = 1; i <= 3; i++){ %>
	<h2>이클립스와 톰캣으로 HTML 렌더링</h2>
	<p>
	안녕하세요. 오늘은 2021년 7월 29일 목요일입니다.<br/>
		개발환경 설정 후 HTML실행을 테스트 중입니다.
		<% out.println("<h2>123</h2>"); %>
		<%-- Sytem.out.println: 콘솔창에서 실행
			 out.println: 브라우저에서 실행 --%>
	</p>
	<% }; %>
	<%-- 두개의 구역에 괄호를 나누어 넣어도 가능 - 만약 중괄호를 하나의 스크립트릿 내부에 작성하면  중간에 위치한 HTML 코드를 자바코드로 인식하고 에러 발생
		 for 구문을 작성해도 소스코드 검사에서는 반복한 결과물만 나오기 때문에 보안성이 좋음 - for 구문을 사용했는지 알 수 없음(비즈니스 로직을 숨기고 서비스만 제공)  --%> 
</body>
</html>