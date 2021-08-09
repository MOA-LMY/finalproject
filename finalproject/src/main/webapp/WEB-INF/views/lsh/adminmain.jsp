<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminmain.jsp</title>
</head>
<body>
<h1>관리자 메인 테스트1</h1>
<ul>
	<li><a href="${pageContext.request.contextPath }/lsh/admingoods">상품</a></li>
	<li><a href="${pageContext.request.contextPath }/lsh/admingoodsdetail">상품상세정보</a></li>
	<li><a href="${pageContext.request.contextPath }/lsh/adminpet">pet</a></li>
	<li><a href="${pageContext.request.contextPath }/lsh/adminstorages">재고</a></li>
	<li><a href="${pageContext.request.contextPath }/lsh/adminmembers">회원</a></li>
</ul>
</body>
</html>
