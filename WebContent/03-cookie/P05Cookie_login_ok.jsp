<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* post 방식 한글 처리 */
	request.setCharacterEncoding("UTF-8");

	/* 1. 아이디 비밀번호 받아오기 */
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	/* 2. checkbox가 체크되었는지 여부 받아오기 */
	String checkId = request.getParameter("id_check");
	String checkPw = request.getParameter("pw_check");
	// checkbox에 체크를 하면 yes출력, 안하면 null 출력 
	System.out.println(checkId);
	System.out.println(checkPw);
	String str = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		// 아이디, 비밀번호 입력 후 로그인 성공 - 쿠키가 발급됨 
		if(id.equals("abc1234") && pw.equals("aaa1111")){
			// 로그인 처리를 위한 쿠키 발급 - 로그인 기준이 아이디와 비밀번호 모두 만족해야 하기 때문에 아이디에만 쿠키를 발급해도 됨 
			Cookie idCookie = new Cookie("user_id", id);	// 뒤의 value값을 변수로 작성해야 무슨 값이 들어오든 처리 가능 
			idCookie.setMaxAge(20);
			response.addCookie(idCookie);
			
			// 체크박스가 체크되어 있을 경우, 아이디와 비밀번호 자동입력을 위한 쿠키 발급 
			// id 체크박스 
			if(!checkId.equals(str) && checkId.equals("yes")){	// value 값이 null이 아닌 것을 확인해야하는 데, null이 아님을 미리  작성 
				Cookie idCheckCookie = new Cookie("remember_id", id);
				idCheckCookie.setMaxAge(20);
				response.addCookie(idCheckCookie);
			}
			// password 체크박스 
			if(!checkPw.equals(str) && checkPw.equals("yes")){
				Cookie pwCheckCookie = new Cookie("remember_pw", pw);
				pwCheckCookie.setMaxAge(20);
				response.addCookie(pwCheckCookie);
			}
			
			response.sendRedirect("P03Cookie_welcome.jsp");
		// 아이디, 비밀번호 틀림으로 로그인 실패 - 쿠키 발급되지 않음 
		}else{
			out.println("<h2>로그인에 실패했습니다.</h2>");
		}
	%>
</body>
</html>