<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String roll;
	List<String> party = new ArrayList<String>();
%>
<%
	int num = (int)(Math.random() * 5) + 1;
	if(num == 1){
		roll = "마법사";
	}else if(num == 2){
		roll = "전사";
	}else if(num == 3){
		roll = "도적";
	}else if(num == 4){
		roll = "사제";
	}else if(num == 5){
		roll = "사냥꾼";
	}
	
	party.add(roll);
	
	int sameRoll = 0;
	
	for(String player : party){
		if(player.equals(roll)){
			sameRoll++;
		}
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Roll</title>
</head>
<body>
	<h2>당신의 역할</h2>
	<p>
		당신에게 부여된 역할은 <b>[<%= roll %>]</b> 입니다.<br>
		현재 파티에 당신과 같은 역할을 가진 플레이어는 <%= sameRoll %>명입니다.
	</p>
	<p>
		현재 구성
		<%
			if(party.size() == 11){
				party.clear();
			}
			out.println(party.toString());
		%><br>(<%= party.size() %>명 참가중)
	</p>
</body>
</html>