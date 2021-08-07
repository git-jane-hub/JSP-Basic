<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "R03.jsp" method = "get">
	이름: 
    <input type = "text" name = "name" placeholder = "이름" required><br>
    성별: 
    <input type = "radio" name = "gender" value = "여성">여성
    <input type = "radio" name = "gender" value = "남성">남성<br>
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
    취미: 
    <input type = "checkbox" name = "hobby" value = "운동">운동
    <input type = "checkbox" name = "hobby" value = "게임">게임
    <input type = "text" name = "hobby" placeholder = "자유롭게 작성"><br>
    <input type = "submit" value = "제출">
    <input type = "reset" value = "초기화">
    </form>
</body>
</html>