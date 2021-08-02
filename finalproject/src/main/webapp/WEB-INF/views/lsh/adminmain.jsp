<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminmain.jsp</title>
</head>
<body>
<h1>관리자 메인 테스트</h1>
<ul>
	<li><a href="${pageContext.request.contextPath }/admin/admingoods">상품</a></li>
	<li><a href="${pageContext.request.contextPath }/admin/adminpet">pet</a></li>
	<li><a href="${pageContext.request.contextPath }/admin/adminevent">event</a></li>
</ul>
</body>
</html>