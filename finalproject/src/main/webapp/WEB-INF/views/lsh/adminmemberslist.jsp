<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminmembersupate.jsp</title>
</head>
<body>
<h1>관리자 회원 목록 페이지</h1>
<table border="1">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>전화번호</th>
		<th>이메일</th>
		<th>주소</th>
		<th>생년월일</th>
		<th>회원ON/OFF</th>
		<th>포인트</th>
		<th>회원삭제</th>
		<th>회원수정</th>
	</tr>
	<c:forEach var="vo" items="${list }">
		<tr>
			<td>${vo.m_id }</td>
			<td>${vo.m_pwd }</td>
			<td>${vo.m_name }</td>
			<td>${vo.m_phone }</td>
			<td>${vo.m_email }</td>
			<td>${vo.m_addr }</td>
			<td>${vo.m_birth }</td>
			<td>${vo.m_enabled }</td>
			<td>${vo.m_points }</td>
			<td><a href="${pageContext.request.contextPath }/membersdelete?m_id=${vo.m_id }">회원삭제</a></td>
			<td><a href="${pageContext.request.contextPath }/membersupdate?m_id=${vo.m_id }">회원수정</a></td>
		</tr>
	</c:forEach>
</table>
<a href="${pageContext.request.contextPath }/lsh/adminmembers">관리자 회원 페이지</a><br>
<a href="${pageContext.request.contextPath }/lsh/adminmain">관리자 메인 페이지</a>
</body>
</html>

