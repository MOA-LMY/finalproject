<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/join/fonts/icomoon/style.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/join/css/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/join/css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/join/css/style.css">

<title>Login #3</title>
</head>
<body>


	<div class="half">
		<div class="bg order-1 order-md-2"
			style="background-image: url('${pageContext.request.contextPath}/resources/join/images/bg_1.jpg');"></div>
		<div class="contents order-2 order-md-1">
			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-6">
						<div class="form-block">
							<div class="text-center mb-3">
								<h3>Input your Id and Email</h3>
								<!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
							</div>
							<div class="text-center mb-5"
								style="height: 30px; width: 100%; border: 3px solid #fb771a">
								<div id="searchId" style="width: 50%; float: left;">id</div>
								<div id="searchPassword"
									style="width: 50%; float: right; background-color: #fb771a; color: white;">password</div>
							</div>
							<div id="content">
								<span id="spanId"></span>
								<div class="form-group first">
									<label for="username">ID</label> <input type="text"
										class="form-control" placeholder="your id" id="id" name="m_id">
								</div>
								<div class="form-group first">
									<label for="email">Email</label>
									<div>
										<input type="text" class="form-control"
											placeholder="email@com" id="email"
											style="width: 80%; float: left;" name="m_email">
										<button class="btn-sm btn-primary"
											style="margin-top: 2px; margin-left: 10px; width: 15%; height: 50px; font-size: 20px;"
											id="sendMail">send</button>
									</div>
									<p style="margin-top: 10px">
										<span id="idSpan"></span>
									<p>
								</div>

								<div style="margin-top: 10px;">
									<input type="text" class="form-control"
										placeholder="input-code" id="code"
										style="height: 40px; width: 35%; float: left"
										disabled="disabled">
									<button id="btn2" class="btn-sm btn-primary"
										style="margin-top: 2px; margin-left: 10px; width: 15%; height: 35px;">commit</button>
									<span id="span" class="captain"></span>
								</div>

								<input type="button" style="margin-top: 50px;"
									value="go to Login" class="btn btn-block btn-primary">

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>


	</div>



	<script
		src="${pageContext.request.contextPath}/resources/join/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/join/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/join/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/join/js/main.js"></script>
	<script type="text/javascript">
	var id = "";
			$("#searchId").hover(function(){
				$("#searchId").css("background-color","#fb771a");
				$("#searchId").css("color","white");
			},function(){
				$("#searchId").css("background-color","white");
				$("#searchId").css("color","black");
			});
			$("#searchId").click(function(){
				location.href="${pageContext.request.contextPath}/login/searchId";
			})
		var key="-";	
		$("#sendMail").click(function() {
			$("#spanId").text("잠시만 기다려 주세요..")
			id = $("#id").val();
			var email = $("#email").val();
		 	$.ajax({
				url : "${pageContext.request.contextPath}/login/searchPassword",
				data : {"email" : email,"id":id},
				dataType : "json",
				success : function(json) {
					key = json.key;
				
					if(key=="error"){
						$("#spanId").empty();
						alert("옳바르지 않은 이메일 형식입니다.")
						$("#email").val("");
						$("#id").val("");
					}else if(key!="fail"){
						$("#spanId").empty();
						alert("인증번호가 전송되었습니다.")
						$("#code").prop("disabled", false);
						$("#code").focus();
					}else{
						$("#spanId").empty();
						alert("아이디 또는 이메일이 맞지 않습니다.")
						$("#email").val("");
						$("#id").val("");
					}
					
				}
			})
			return false;
		})
		$("#btn2").click(function() {
		console.log("key :" + key)
		var code = $("#code").val();
		if (code != key) {
			alert("인증번호가 맞지 않습니다.")
			$("#span").empty();
			$("#span").append(redcheck);

		} else {
			$("#span").empty();
			alert("인증완료!")
			emailcheck = true;
			$("#content").empty();
			$("#content").append(`
					<form action="${pageContext.request.contextPath }/login/changePwd"
					method="post" >
					<div class="form-group">
					<label for="password">Password</label><span></span> <input
						type="password" class="form-control"
						placeholder="at least 4 characters" id="password" name="password"
						style="height: 40px;">
				</div>

				<div class="form-group">
					<label for="re-password">Re-type Password</label> <span></span>
					<input type="password" class="form-control"
						laceholder="Re-type Your Password" id="re-password"
						style="height: 40px;">

				</div>
				<input type='hidden' name='${_csrf.parameterName}' value='${_csrf.token}' />
				<input type="hidden" name='id' value=`+id+`>
				<input type="submit" style="margin-top:50px;" id="submit"
					value="Change Password" class="btn btn-block btn-primary" disabled="disabled">
				</form>
					`)
					$("#password").keyup(function() {
  		let password = $("#password").val();
  		
  		if(password.length<=3){
  			$("#password").css("border","1px solid red");
  			$(this).prev().empty();
  			$(this).prev().append(redcheck);
 				pwdCheck=false;
 				$("#submit").prop("disabled", true);
  			}else{
  				$("#password").css("border","1px solid green")
  	  			$(this).prev().empty();
  	  			 $(this).prev().append(greencheck);
  			$("#submit").prop("disabled", true);
  			let repassword = $("#re-password").val();
  			if(password==repassword){
  				$("#re-password").css("border","1px solid green")
  	  			$("#re-password").prev().empty();
  	  			$("#re-password").prev().append(greencheck);
  				$("#submit").prop("disabled", false);
  			}else{
  				$("#re-password").prev().empty();
  	  			$("#re-password").prev().append(redcheck);
  				
  				
  			}
  			
  		}
  		
  	})
  	$("#re-password").keyup(function() {
  	
  		let password = $("#password").val();
  		let repassword = $("#re-password").val();
  		if(password!=repassword){
  			$("#re-password").css("border","1px solid red");
  			$(this).prev().empty();
  			$(this).prev().append(redcheck);
  			$("#submit").prop("disabled", true);
  		}else{
  			if(password.length<4){
  				$("#submit").prop("disabled", true);
  			}else{
  				$("#submit").prop("disabled", false);
  				$("#password").prev().empty();
  				$("#password").prev().append(greencheck);
  			}
  			$("#re-password").css("border","1px solid green")
  			$(this).prev().empty();
  			$(this).prev().append(greencheck);
  			
  		}
  		
  	})
		return false;
		}
	})
	</script>
</body>
</html>