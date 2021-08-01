<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response 객체 테스트 - end</title>
</head>
<body>
	<h1>페이지 이동이 실행되지 못했습니다.</h1>
	<%
		/*  response.sendRedirect("주소")는 해당 코드가 실행될경우,
			바로 파라미터로 입력된 주소로 이동시킴 
			50% 의 확률로 네이버로 이동시키는 코드 작성
			50% - 네이버로 이동
			50% - <h1>안넘어갔습니다.</h1>
			a가 실행됨 - 이동해온 본 페이지에서 스크립트릿이 작동 - 네이버로 이동 */
			double value = Math.random();
			// else를 작성할 필요 없음 - 네이버로 이동했을 때는 이미 페이지 이동이 완료된 후이기 때문
			if(value > 0.5){
				response.sendRedirect("http://www.naver.com");
			}
	%>
</body>
</html>