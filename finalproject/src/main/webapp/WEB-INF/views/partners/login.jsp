<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>파트너쉽로그인</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
	파트너쉽아이디<br>
	<input type="text" name="id"><br>
	파트너쉽비밀번호<br>
	<input type="password" name="pwd"><br>
	<div style='color:red;'>${errMsg }</div>
	<input type="submit" value="로그인">
</form>
</body>
</html>