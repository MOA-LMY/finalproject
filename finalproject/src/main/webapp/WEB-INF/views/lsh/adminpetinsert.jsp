<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminpetinsert.jsp</title>
</head>
<body>
<h1>관리자 pet등록 페이지</h1>
<form method="post" action="${pageContext.request.contextPath }/petinsert" enctype="multipart/form-data">
	pet이름<br>
	<input type="text" name="pet_name"><br>
	pet나이<br>
	<input type="text" name="pet_age"><br>
	petColor<br>
	<input type="text" name="pet_color"><br>
	pet가격<br>
	<input type="text" name="pet_price"><br> 
	petType<br>
	<input type="text" name="pet_type"><br>
	pet내용<br>
	<input type="text" name="pet_content"><br>
	예약번호<br>
	<input type="text" name="r_num"><br>
	파트너아이디<br>
	<input type="text" name="pt_id"><br>
	pet사진<br>
	<input type="file" name="file1"><br>
	<input type="submit" value="등록">
</form>
</body>
</html>