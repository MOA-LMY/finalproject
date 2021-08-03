<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminstorageslist.jsp</title>
</head>
<body>
<h1>관리자 재고 목록 페이지</h1>
<table border="1">
	<tr>
		<th>재고번호</th>
		<th>재고수량</th>
		<th>재고입고날짜</th>
		<th>상품번호</th>
		<th>재고삭제</th>
		<th>재고수정</th>
	</tr>
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.st_num }</td>
			<td>${vo.st_ea }</td>
			<fmt:parseDate value='${vo.st_date}' var='st_date' pattern='yyyy-MM-dd'/>
			<td>
			<fmt:formatDate value="${st_date}" pattern="yyyy-MM-dd"/>
			</td>
			<td>${vo.g_num }</td>
			<td><a href="${pageContext.request.contextPath }/storagesdelete?st_num=${vo.st_num }">재고삭제</a></td>
			<td><a href="${pageContext.request.contextPath }/storagesupdate?st_num=${vo.st_num }">재고수정</a></td>
		</tr>
	</c:forEach>
</table>
<a href="${pageContext.request.contextPath }/lsh/adminstorages">관리자 재고 페이지</a><br>
<a href="${pageContext.request.contextPath }/lsh/adminmain">관리자 메인 페이지</a>
</body>
</html>
