<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminpet.jsp</title>
</head>
<body>
<h1>관리자 pet 관리 페이지</h1>
<ul>
	<li><a href="${pageContext.request.contextPath }/petinsert">pet등록</a></li>
	<li><a href="${pageContext.request.contextPath }/petlist">pet목록</a></li>
</ul>
</body>
</html>