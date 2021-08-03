<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminstoragesinsert.jsp</title>
</head>
<body>
<h1>관리자 재고 수정 페이지</h1>
<form method="post" action="${pageContext.request.contextPath }/storagesupdate">
	<input type="hidden" name="st_num" value="${vo.st_num }">
	재고 수량<br>
	<input type="text" name="st_ea" value="${vo.st_ea }"><br>
	재고입고일자<br>
	<input type="date" name="st_date" value="${vo.st_date }"><br>
	상품 번호<br>
	<input type="text" name="g_num" value="${vo.g_num }"><br>
	<input type="submit" value="등록">
</form>
</body>
</html>