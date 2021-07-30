<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체 파라미터 전달 예제</title>
</head>
<body>
	<!-- form 태그의 action은 데이터가 전달될 목적지
		  현재 P03Req_param_getpost.jsp로 데이터 전달 -->
	<!-- method를 get에서 post로 수정하면, P03Req_param_getpost에서의 한글이 깨짐 -->
	<form action = "P03Req_param_getpost.jsp" method = "post">
		<input type = "text" name = "id" />아이디<br>
		<input type = "text" name = "nick" />닉네임<br>
		<input type = "password" name = "pw" />비밀번호<br>
		취미: 
		<!-- name -->
		<input type = "checkbox" name = "hobby" value = "요리" />요리&nbsp;
		<input type = "checkbox" name = "hobby" value = "운동" />운동&nbsp;<br>
		특기:
		<input type = "checkbox" name = "specialty" value = "영어" />영어&nbsp;
		<input type = "checkbox" name = "specialty" value = "중국어" />중국어&nbsp;
		<input type = "checkbox" name = "specialty" value = "일본어" />일본어&nbsp;
		<input type = "checkbox" name = "specialty" value = "스페인어" />스페인어&nbsp;
		<input type = "checkbox" name = "specialty" value = "아랍어" />아랍어&nbsp;<br>
		<!-- 한가지의 선택지만 선택할 수 있게 radio 사용 -->
		성별: 
		<input type = "radio" name = "gender" value = "남성" />남성&nbsp;
		<input type = "radio" name = "gender" value = "여성" />여성&nbsp;<br>
		혼인: 
		<input type = "radio" name = "marriage" value = "미혼" />미혼&nbsp;
		<input type = "radio" name = "marriage" value = "기혼" />기혼&nbsp;<br>
		<select name = "region">
			<option>서울</option>
			<option>경기</option>
			<option>충청</option>
			<option>전라</option>
			<option>경상</option>
			<option>강원</option>
			<option>제주</option>
		</select><br>
		<br>
		<input type = "submit" />
		<!-- form 내부에 작성된 내용을 삭제 -->
		<input type = "reset" /><br>
	</form>
</body>
</html>