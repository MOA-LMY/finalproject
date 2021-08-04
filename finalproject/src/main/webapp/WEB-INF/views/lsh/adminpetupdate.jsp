<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminpetupdate.jsp</title>
</head>
<body>
<h1>반려동물 수정</h1>
<form method="post" action="${pageContext.request.contextPath }/petupdate" enctype="multipart/form-data">
	<input type="hidden" name="pet_num" value="${vo.pet_num }">  
	pet이름<br>
	<input type="text" name="pet_name" value="${vo.pet_name }"><br>
	pet나이<br>
	<input type="text" name="pet_age" value="${vo.pet_age }"><br>
	petColor<br>
	<input type="text" name="pet_color" value="${vo.pet_color }"><br>
	pet가격<br>
	<input type="text" name="pet_price" value="${vo.pet_price }"><br> 
	petType<br>
	<input type="text" name="pet_type" value="${vo.pet_type }"><br>
	pet내용<br>
	<input type="text" name="pet_content" value="${vo.pet_content }"><br>
	예약번호<br>
	<input type="text" name="r_num" value=${vo.r_num } readonly><br>
	파트너아이디<br>
	<input type="text" name="pt_id" value=${vo.pt_id } readonly><br>
	파일명 ${vo.pet_orgimg }<br>
	수정할 파일 <input type="file" name="file1"><br>
	<input type="submit" value="등록">
</form>
</body>
</html>