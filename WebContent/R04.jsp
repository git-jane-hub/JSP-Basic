<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 다시 --%>
<%!
	String roll;
	List<String> party = new ArrayList<String>();
%>
<%
	int rollN = (int)(Math.random() * 5);
	if(rollN == 0){
		roll = "전사";
	}else if(rollN == 1){
		roll = "마법사";
	}else if(rollN == 2){
		roll = "도적";
	}else if(rollN == 3){
		roll = "사제";
	}else{
		roll = "사냥꾼";
	}
	
	int countSameRole = 0;
	for(String r : party){
		if(party.contains(r)){
			countSameRole++;
		}
	}
	
	if(party.size() != 10){
		party.add(roll);
	}else{
		party.clear();
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
		당신에게 부여된 역할은 <b>[<%= roll %>]</b>입니다.<br>
		현재 파티에 당신과 같은 역할을 가진 플레이어는 <%= countSameRole %>명입니다.<br>
	</p>
	<p>
		현재 파티 구성<br>
		<%= party.toString() %>(<%= party.size() %>명 참가중)<br>
	</p>
</body>
</html>