<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	List<String> party = new ArrayList<String>();
	String roll;
%>
<%
	int pick = (int)(Math.random() * 5) + 1;
	if(pick == 1){
		roll = "마법사";
	}else if(pick == 2){
		roll = "사제";
	}else if(pick == 3){
		roll = "전사";
	}else if(pick == 4){
		roll = "도적";
	}else{
		roll = "사냥꾼";
	}
	
	party.add(roll);
	
	int countSameRoll = 0;
	// 향상된 for문 복습
	for(String player : party){
		if(roll.equals(player)){
			countSameRoll++;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>당신의 역할</h2>
	<p>
		당신에게 부여된 역할은 <b>[<%= roll %>]</b> 입니다.<br>
		현재 파티에 당신과 같은 역할을 가진 플레이어는 <%= countSameRoll %>명입니다.<br>
	</p>
	<p>
		현재 파티 구성<br>
		<% 
		 	if(party.size() == 10){
		 		party.clear();
		 	}
			out.println(party.toString());
		 %>(<%= party.size() %>명 참가중)<br>
	</p>
</body>
</html>