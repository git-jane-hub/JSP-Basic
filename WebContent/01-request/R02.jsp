<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 전달</title>
</head>
<body>
	<form action = "R03.jsp" method = "post">
		이름: 
		<input type = "text" name = "id" placeholder = "ID" required /><br>
		별명: 
		<input type = "text" name = "nickname" placeholder = "NICK NAME" required /><br>
		비번: 
		<input type = "password" name = "password" placeholder = "PASSWORD" required /><br>
		<!-- radio에 value 작성 필요 -->
		성별: 
		<input type = "radio" name = "gender" value = "여성" />여성
		<input type = "radio" name = "gender" value = "남성" />남성<br>
		혼인: 
		<input type = "radio" name = "marriage" value = "미혼" />미혼
		<input type = "radio" name = "marriage" value = "기혼" />기혼<br>
		<!-- select에 name 작성 필요 -->
		지역: 
		<select name = "region">
			<option>서울</option>
			<option>경기</option>
			<option>강원</option>
			<option>충청</option>
			<option>경상</option>
			<option>전라</option>
			<option>제주</option>
		</select><br>
		<!-- checkbox에 value 작성 필요 -->
		취미: 
		<input type = "checkbox" name = "hobby" value = "운동" />운동
		<input type = "checkbox" name = "hobby" value = "게임" />게임<br>
		특기: 
		<input type = "checkbox" name = "specialty" value = "영어" />영어 
		<input type = "checkbox" name = "specialty" value = "제2외국어" />제2외국어<br>
		<input type = "submit" value = "완성" />
		<input type = "reset" value = "초기화" />
	</form>
</body>
</html>