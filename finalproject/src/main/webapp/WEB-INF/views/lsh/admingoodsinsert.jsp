<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admingoodsinsert.jsp</title>
</head>
<body>
<h1>관리자 상품등록 페이지</h1>
<form method="post" action="${pageContext.request.contextPath }/goodsinsert?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">	

	상품이름<br>
	<input type="text" name="g_name"><br>
	상품가격<br>
	<input type="text" name="g_price"><br>
	상품내용<br>
	<input type="text" name="g_content"><br>
	상품수량<br>
	<input type="text" name="g_ea"><br> 
	<!--  
	상품내용<br>
	<input type="text" name="g_info"><br>
	-->
	상품카테고리<br>
	<select name="gc_num">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
	</select>
	<br>
	상품사진<br>
	<input type="file" name="file1"><br>
	<input type="submit" value="등록">
</form>
</body>
</html>