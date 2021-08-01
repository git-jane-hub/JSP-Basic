<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		int[] arr = {100, 200, 300, 400, 500};
		for(int a = 0; a < arr.length; a++){
			out.println(arr[a]);			
		}
		for(int a : arr){
			out.println(a);
		}
	%>
</body>
</html>