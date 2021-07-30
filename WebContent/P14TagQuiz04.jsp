<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String roll;
	public int countSameRoll = 0;
	public String pickRoll(){
		int pick = (int)(Math.random() * 5) + 1;
		if(pick == 1){
			return "마법사";
		}else if(pick == 2){
			return "사제";
		}else if(pick == 3){
			return "전사";
		}else if(pick == 4){
			return "도적";
		}else{
			return "사냥꾼";
		}
	}
	List<String> party = new ArrayList<String>();
%>
<%
	String pickRoll = pickRoll();
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
		당신에게 부여된 역할은 <b>[<%= pickRoll %>]</b> 입니다.<br>
		현재 파티에 당신과 같은 역할을 가진 플레이어는 <% 
			for(int a = 0; a < party.size(); a++){
				countSameRoll = 0;
				if(party.get(a) == pickRoll){
					countSameRoll++;
				}
			}
			out.println(countSameRoll);
		%>명입니다.<br>
	</p>
	<p>
		현재 파티 구성<br>
		[<% 
		 	if(party.size() != 10){
		 		party.add(pickRoll());
		 	}else{
		 		party.clear();
		 	}
			for(int a = 0; a < party.size(); a++){
				out.println(party.get(a) + ", ");
			}
		 %>](<%= party.size() %>명 참가중)<br>
	</p>
</body>
</html>