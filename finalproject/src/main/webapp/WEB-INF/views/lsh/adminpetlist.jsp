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
		<th>pet번호</th>
		<th>pet이름</th>
		<th>pet가격</th>
		<th>pet내용</th>
		<th>pet사진</th>
		<th>pet삭제</th>
		<th>pet수정</th>
	</tr>
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.pet_num }</td>
			<td>${vo.pet_name }</td>
			<td>${vo.pet_price }</td>
			<td>${vo.pet_content }</td>
			<td>${vo.pet_orgimg }</td>
			<td><a href="${pageContext.request.contextPath }/petdelete?pet_num=${vo.pet_num }">pet삭제</a></td>
			<td><a href="${pageContext.request.contextPath }/petupdate?pet_num=${vo.pet_num }">pet수정</a></td>
		</tr>
	</c:forEach>
</table>
<a href="${pageContext.request.contextPath }/admin/adminpet">관리자 pet 페이지</a><br>
<a href="${pageContext.request.contextPath }/admin/adminmain">관리자 메인 페이지</a>
</body>
</html>