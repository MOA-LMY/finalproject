<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>관리자 상품상세 등록 페이지</h1>
<form method="post" action="${pageContext.request.contextPath }/goodsdetailinsert" enctype="multipart/form-data">	
	상품Color<br>
	<input type="text" name="gd_color"><br>
	상품Size<br>
	<select name="gd_size">
		<option value="S">S</option>
		<option value="M">M</option>
		<option value="L">L</option>
	</select>
	<br>
	상품번호(g_num)<br>
	<input type="text" name="g_num"><br>
	상품디테일사진<br>
	<input type="file" name="file1"><br>
	<input type="submit" value="등록">
</form>
</body>
</html>