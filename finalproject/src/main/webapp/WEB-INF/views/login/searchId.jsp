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
								<h3>Input your Email</h3>
								<!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
							</div>
							<div class="text-center mb-5" style="height: 30px; width:100%;border: 3px solid #fb771a">	
									<div id="searchId" style="width:50%;float:left; background-color: #fb771a;color:white;">id</div>
									<div id="searchPassword" style=" width:50%;float:right;">password</div>
							</div>
							<div id="content">
				<div class="form-group first">
					<label for="email">Email</label>
					<div>
						<input type="text" class="form-control" placeholder="email@com"
							id="email" style="width: 80%; float: left;" name="m_email">
						<button class="btn-sm btn-primary"
							style="margin-top: 2px; margin-left: 10px; width: 15%; height: 50px;font-size:20px;"
							id="check">check</button>
					</div>
					
					<div id="idresult" style="margin-top: 10px;text-align: center">
						
					</div>
				</div>
				</div>
				<div style="margin-top: 10px;">
				<input type="button" style="margin-top:50px;"
					value="go to Login" class="btn btn-block btn-primary">
					
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
	<script type="text/javascript"
		src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
		charset="utf-8"></script>
	<script type="text/javascript">
			var id="";
			$("#searchPassword").hover(function(){
				$("#searchPassword").css("background-color","#fb771a");
				$("#searchPassword").css("color","white");
			},function(){
				$("#searchPassword").css("background-color","white");
				$("#searchPassword").css("color","black");
			});
			$("#searchPassword").click(function(){
				location.href="${pageContext.request.contextPath}/login/searchPwd";
			})
			
			$("#check").click(function(){
				$("#idresult").empty();
				var email=$("#email").val();
				$.ajax({
					url : "${pageContext.request.contextPath}/members/searchId",
					data : {
						"email" : email
					},
					dataType : "json",
					success : function(json) {
						id = json.id;
						if(id!="fail"){
							var resultId = id.substr(0, 3);
							for(let i=0;i<id.length-3;i++){
								resultId+="*";
							}
							$("#idresult").append(`
									<table>
										<tr>
											<td>조회된 아이디 : </td>
										
											<td><strong>`+resultId+`</strong></td>
											
										</tr>
							`);
						}else{
							alert("등록되지 않은 email 입니다.")
							$("#email").val("");
						}
						
					}
				})
			})
		
	</script>
</body>
</html>