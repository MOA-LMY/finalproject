<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="text-align: center">
		<tr>
		<th>예약된 펫</th>
		<th>파트너사 </th>
		<th>예약 날짜</th>
		<th>예약 진행상황</th>
		</tr>
		<c:forEach var="vo" items="${list1 }">
		<tr>
			<td>${vo.pet_name }</td>
			<td>${vo.pt_id }</td>
			<fmt:formatDate value="${vo.r_date}" pattern="YYYY/MM/dd" var="regdate"/>
			<td>${regdate}</td>
			<c:choose>
			<c:when test="${vo.r_process==0 }">
			<td>접수중</td>
			</c:when>
			<c:when test="${vo.r_process==1 }">
			<td>접수완료</td>
			</c:when>
			<c:otherwise>
			<td>방문완료</td>
			</c:otherwise>
			</c:choose>
			
		</tr>
		</c:forEach>
	</table>
	
	<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
		<c:choose>
			<c:when test="${pu.pageNum==i }">
				<a href="${pageContext.request.contextPath }/partners/reservationList?pageNum=${i }">
				<span style="color:blue;font-weight: bold">[${i }]</span>
				</a>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath }/partners/reservationList?pageNum=${i }">
				<span style="color:gray">[${i }]</span>
				</a>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
</body>
</html>