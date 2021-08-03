<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 쿠키로그인: 브라우저를 닫아도 로그인이 유지됨
    	  세션로그인: 브라우저를 닫으면 로그인이 만료됨 --%>
<%
	 /* 세션에 저장된 데이터는 브라우저 창이 종료될 때까지 혹은 세션의 유효시간이 만료되기 전까지 
		웹 어플리케이션 내부의 모든 JSP파일에서 데이터를 호출해 사용 가능  
		세션에 저장된 데이터를 가져오려면 세션 객체의 getAttribute() 메서드를 사용하고
		파라미터로 가져올 데이터의 세션명을 작성하면 매칭된 세션값이 호출됨*/
		// P02Session_insert을 실행하지 않고 여기서 바로 웹브라우저에서 이동하면 아래 세션 getter는 null값을 반환(에러발생하지 않음)
		String userId = (String)session.getAttribute("id_session");
		String userName = (String)session.getAttribute("name_session");
		String JSP = (String)session.getAttribute("JSP");
		
		out.println(userId + "<br>");
		out.println(userName + "<br>");
		out.println(JSP + "<br>");
		out.println("--------------------------<br>");
		
	/*  세션의 유효시간은 아래의 메서드를 사용
		기본은 30분으로 세팅되어있고(디폴트 시간) setMaxinactiveInterval()을 사용해 초단위로 입력하면 변경 가능 */
		// session.setMaxInactiveInterval(29);
		int sTime = session.getMaxInactiveInterval();
		out.println("세션의 유효시간: " + sTime + "초<br");
		out.println("--------------------------<br>");
		
		// 특정 세션 데이터 삭제 - null 값 반환
		userName = (String)session.getAttribute("name_session");
		out.println("name_session 삭제 전: " + userName + "<br>");
		
		session.removeAttribute("name_session");
		
		userName = (String)session.getAttribute("name_session");
		out.println("name_session 삭제 후: " + userName + "<br>");
		
		// 세션 일괄적으로 삭제 - 실행하면 에러 발생
		userId = (String)session.getAttribute("id_session");
		JSP = (String)session.getAttribute("JSP");
		out.println("id_session 삭제 전: " + userId + "<br>");
		out.println("JSP 삭제 전: " + JSP + "<br>");
		
		session.invalidate();
		
		if(request.isRequestedSessionIdValid()){	// true(존재) / false(부재)로 반환
			out.println("유효 세션이 존재");
		}else{
			out.println("유효 세션이 존재하지 않음");
		}
		out.println("<br>--------------------------<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>