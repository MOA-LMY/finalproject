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
<form method="post" action="${pageContext.request.contextPath }/goodsinsert" enctype="multipart/form-data">	
	상품이름<br>
	<input type="text" name="g_name"><br>
	상품가격<br>
	<input type="text" name="g_price"><br>
	상품내용<br>
	<input type="text" name="g_content"><br>
	상품수량<br>
	<input type="text" name="g_ea"><br>
	상품 카테고리<br>
	<select name="gc_num">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
	</select>
	<br>
	상품색상<br>
	<select name="c_colorcode" onchange="handleOnChange1(this)">
		<option value="#FFFEF9" selected>화이트</option>
		<option value="#DEB887">베이지</option>
		<option value="#FCF16E">옐로우</option>
		<option value="#98FB98">그린</option>
		<option value="#FFC0CB">핑크</option>
		<option value="#ED1941">빨강</option>
		<option value="#AFB4DB">퍼플</option>
		<option value="#4169E1">블루</option>
		<option value="#D3D7D4">그레이</option>
		<option value="#003A6C">네이비</option>
		<option value="#000000">블랙</option>
	</select>
	<br>
	상품색상이름<br>
	<input type="text" name="c_colorname" id="c_colorname" value=""><br>
	상품사이즈<br>
	<select name="sz_snum" onchange="handleOnChange2(this)">
		<option value="1">S</option>
		<option value="2">M</option>
		<option value="3">L</option>
	</select>
	<br>
	상품사이즈명<br>
	<input type="text" name="sz_sizename" id="sz_sizename" value=""><br>
	상품사진<br>
	<input type="file" name="file1"><br>
	<input type="submit" value="등록">
</form>
<script type="text/javascript">
	function handleOnChange1(e1) {
		const value = e1.value;
	  		document.getElementById('c_colorname').value
	    	= value;
	}
	function handleOnChange2(e2) {
		const value = e2.value;
	  		document.getElementById('sz_sizename').value
	    	= value;
	}
</script>
</body>
</html>
