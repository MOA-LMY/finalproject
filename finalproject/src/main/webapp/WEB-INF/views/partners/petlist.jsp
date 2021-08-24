<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petlist.jsp</title>
</head>
<body>
<h1>무료분양글 목록 페이지</h1>
<table border="1">
	<tr>
		<th>pet번호</th>
		<th>pet이름</th>
		<th>petColor</th>
		<th>pet가격</th>
		<th>petType</th>
		<th>pet내용</th>
		<th>pet사진</th>
	</tr>
	<c:forEach var="vo" items="${petvo}">
		<tr>
			<td>${vo.pet_num }</td>
			<td>${vo.pet_name }</td>
			<td>${vo.pet_color }</td>
			<td>${vo.pet_price }</td>
			<td>${vo.pet_type }</td>
			<td>${vo.pet_content }</td>
			<td>${vo.pet_orgimg }</td>
		</tr>
	</c:forEach>
</table>
<a href="${pageContext.request.contextPath}/partners/petinsert">등록</a>
</body>
</html>
