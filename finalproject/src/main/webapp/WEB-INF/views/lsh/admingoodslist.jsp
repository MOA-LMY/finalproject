<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admingoodslist.jsp</title>
</head>
<body>
<h1>관리자 상품 목록 페이지</h1>
<table border="1">
	<tr>
		<th>상품번호</th>
		<th>상품이름</th>
		<th>상품가격</th>
		<th>상품내용</th>
		<th>상품수량</th>
		<th>상품사진</th>
		<th>상품카테고리</th>
		<th>상품삭제</th>
		<th>상품수정</th>
	</tr>
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.g_num }</td>
			<td>${vo.g_name }</td>
			<td>${vo.g_price }</td>
			<td>${vo.g_content }</td>
			<td>${vo.g_ea }</td>
			<td>${vo.g_orgimg }</td>
			<td>${vo.gc_num }</td>
			<td><a href="${pageContext.request.contextPath }/goodsdelete?g_num=${vo.g_num }">상품삭제</a></td>
			<td><a href="${pageContext.request.contextPath }/goodsupdate?g_num=${vo.g_num }">상품수정</a></td>
		</tr>
	</c:forEach>
</table>
<a href="${pageContext.request.contextPath }/lsh/admingoods">관리자 상품 페이지</a><br>
<a href="${pageContext.request.contextPath }/lsh/adminmain">관리자 메인 페이지</a>
</body>
</html>