<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminmembersupdate.jsp</title>

</head>
<body>
	<h1>관리자 회원 수정 페이지</h1>
	<form action="${pageContext.request.contextPath }/membersupdate" method="post">
		<input type="hidden" name="m_id" value="${vo.m_id }"> 
		회원 비밀번호<br>
		<input type="password" name="m_pwd" value="${vo.m_pwd }"><br>
		회원 이름<br> 
		<input type="text" name="m_name" value="${vo.m_name }"><br>
		전화번호<br> 
		<input type="text" name="m_phone" value="${vo.m_phone }"><br>
		이메일<br> 
		<input type="text" name="m_email" value="${vo.m_email }"><br>
		주소<br> 
		<input type="text" name="m_addr" value="${vo.m_addr }"><br>
		생년월일<br> 
		<input type="date" name="m_birth" value="${vo.m_birth }"><br>
		회원ON/OFF<br>	<!-- 토글버튼으로 구현할것 --> 
		<select name="m_enabled" id="${vo.m_enabled }">
			<option value="1">ON</option>
			<option value="0">OFF</option>
		</select>
		<br>
		회원포인트<br> 
		<input type="text" name="m_points" value="${vo.m_points }"><br> 
		<input type="submit" value="등록">
	</form>
</body>
</html>