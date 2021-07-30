<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- declaration에서 객체를 생성하면,
	한번 생성한 뒤에는  스크립트릿에서처럼 새로 생성을 하지 않기 때문에,
	새로고침할 때마다 번호를 다시 부여받으려면,
	1. Collection List를 스크립트릿에서 생성하거나
	2. Collection List를 declaration에서 생성하고, 스크립트릿에서 List를 clear()해줌 --%>
<%!
	List<Integer> lotto = new ArrayList<Integer>();
%>
<%
	lotto.clear();
	while(lotto.size() != 6){
		int num = (int)(Math.random() * 45) + 1;
		if(!lotto.contains(num))
			lotto.add(num);
	};
	Collections.sort(lotto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lotto 추첨기</title>
</head>
<body>
	<h2>로또번호 생성 결과</h2>
	<p>
		이번주 로또 번호<br>
		<%
			for(Integer num : lotto){
				out.println(num + " ");
				Thread.sleep(700);		// CPU를 잠시 멈추는 메서드(1/1000초)
				out.flush();			// 브라우저의 출력 버퍼를 비우는 메서드
			}
			for(int a = 0; a < 6; a++){
				out.println(lotto.get(a));
			}
		 %>
	</p>
</body>
</html>