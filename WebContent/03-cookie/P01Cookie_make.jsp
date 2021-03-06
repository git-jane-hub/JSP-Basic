<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	 /* 쿠키 생성 방법
		1. 쿠키 객체를 생성 - 생성자의 파라미터로
		쿠키의 이름 및 저장한 데이터를 입력 */
		Cookie apple = new Cookie("apple_cookie", "사과맛");	// name, value
		Cookie peanut = new Cookie("peanut_cookie", "peanutfavor");
		
		/* 2. 쿠키 클래스의 setter 메서드로 쿠키의 속성을 설정 */
		apple.setMaxAge(60 * 60);	// 쿠키의 유효시간 설정: 1시간(60 * 60초) // (60(초) * 60(초) * 24(시간) * 30(일))
		peanut.setMaxAge(20);		// 	       초 단위로 설정: 20초
		
		/* 3.http 응답시 reponse 객체에 생성된 쿠키를 탑재해
		클라이언트로 전송까지 마쳐줘야 사용자 pc에 해당 정보가 저장됨 */
		response.addCookie(apple);
		response.addCookie(peanut);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "P02Cookie_check.jsp">쿠키 직접 확인</a>
</body>
</html>