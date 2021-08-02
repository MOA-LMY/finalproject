<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fileupload.jsp</title>
</head>
<body>
<h1>파일정보 수정</h1>
<form method="post" action="${pageContext.request.contextPath }/goodsupdate" enctype="multipart/form-data">
	<input type="hidden" name="g_num" value="${vo.g_num }"> 
	상품이름<br>
	<input type="text" name="g_name" value="${vo.g_name }"><br>
	상품가격<br>
	<input type="text" name="g_price" value="${vo.g_price }"><br>
	상품내용<br>
	<input type="text" name="g_content" value="${vo.g_content }"><br>
	상품수량<br>
	<input type="text" name="g_ea" value="${vo.g_ea }"><br> 
	상품내용<br>
	<input type="text" name="g_info" value="${vo.g_info }"><br>
	상품카테고리<br>
	<select name="gc_num" id="${vo.gc_num }">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
	</select>
	파일명 ${vo.g_orgimg }<br>
	수정할 파일 <input type="file" name="file1"><br>
	<input type="submit" value="수정">
</form>
</body>
</html>