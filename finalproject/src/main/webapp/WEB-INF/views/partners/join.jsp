<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/finalproject/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	

	$("#btn1").click(function(){
		let id = $("#id").val();
		$.ajax({
			url:"${pageContext.request.contextPath}/idCheck",
			data: {"id":id},
			dataType:"json",
			success:function(data){
				console.log(data)
				if(data.using==true){
					$("#idcheck").html("사용중인 아이디입니다.");
				}else{
					$("#idcheck").html("사용가능한 아이디입니다.");
				}
			}
		});
		return false;
	});
	
});
</script>

</head>
<body>
<h1>파트너쉽가입</h1>
<form method="post" action="${pageContext.request.contextPath}/insert">
	파트너쉽아이디<br>
	<input type="text" name="pt_id" id="id" placeholder="아이디를 입력해주세요.">
	<input type="button" value="중복확인" id="btn1">
	<span id="idcheck"></span><br>
	비밀번호<br>
	<input type="password" name="pt_pwd" placeholder="비밀번호를 입력해주세요."><br>
	파트너사명<br>
	<input type="text" name="pt_name" placeholder="상호명 입력해주세요."><br>
	파트너사번호<br>
	<input type="text" name="pt_phone" placeholder="전화번호를 입력해주세요."><br>
	파트너사이메일<br>
	<input type="text" name="pt_email" placeholder="이메일주소를 입력해주세요."><br>
	파트너사주소<br>
	<input type="text" name="pt_addr" placeholder="주소를 입력해주세요."><br>
	파트너사등록번호<br>
	<input type="text" name="pt_code" placeholder="사업자등록번호를 입력해주세요."><br>
	<input type="submit" value="가입">
</form>
</body>
</html>