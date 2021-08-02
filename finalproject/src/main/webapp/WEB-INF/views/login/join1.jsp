<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		아이디 <input type="text" name="id" id="id"><br> 비밀번호 <input
			type="password" name="pwd" id="pwd"><br> 이메일 <input
			type="text" name="email" id="email"> @ 
			<select id="domain">
			<option	value="gmail.com">gmail.com</option>
			<option	value="naver.com">naver.com</option>
			</select>
		<button id="btn1">인증번호 받기</button>
		<br> <input type="text" id="code">
		<button id="btn2">인증번호 확인</button>
		<span id="span"></span>
	</div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/vendor/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	var key = "";
	$("#btn1").click(function() {
		alert("인증번호가 전송되었습니다.")
		$("#btn1").html("인증번호 재전송");
		var email = $("#email").val()
		var domain = $("#domain").val();
		$.ajax({
			url : "${pageContext.request.contextPath}/members/email",
			data : {
				"email" : email,
				"domain" : domain
			},
			dataType : "json",
			success : function(json) {
				key = json.key
				
			}
		})
	});
	$("#btn2").click(function() {
		console.log("key :" + key)
		var code = $("#code").val();
		if(code!=key){
			alert("인증번호가 맞지 않습니다.")
		}else{
			$("#span").html("인증완료!")
		}
	})
</script>
</html>