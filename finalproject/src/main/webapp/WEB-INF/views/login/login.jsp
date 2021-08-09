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
								<h3>
									Login to <strong>AOPSZ</strong>
								</h3>
								<!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
							</div>

							<form action="${pageContext.request.contextPath }/login"
								method="post">
								<div class="form-group first">
									<label for="username">ID</label> <input type="text"
										class="form-control" placeholder="your id" id="username"
										name="username">
								</div>
								<div class="form-group last mb-3">
									<label for="password">Password</label> <input type="password"
										class="form-control" placeholder="Your Password" id="password"
										name="password">
								</div>

								<div class="d-sm-flex mb-5 align-items-center">
									<label class="control control--checkbox mb-3 mb-sm-0"><span
										class="caption">Remember me</span> <input type="checkbox"
										checked="checked" />
										<div class="control__indicator"></div> </label> <span class="ml-auto"><a
										href="#" class="forgot-pass">Forgot Password</a></span>
								</div>
								<input type="hidden" name="${_csrf.parameterName }"
									value="${_csrf.token }"> <input type="submit"
									value="Log In" class="btn btn-block btn-primary">

							</form>
							<div class="text-center" style="margin-top: 20px;">
								<span style="font-size: 25px;"> sign-up</span>
							</div>
							<div class="text-center" style="height: 50px;">
								<div style="border: 2px solid #fb771a">
									<div
										style="float: left; width: 50%; margin-bottom: 10px; background-color: #fb771a; color: white"
										id="member">Member</div>
									<div id="partner">Partner</div>
								</div>
								<div id="signup"></div>
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
	<script type="text/javascript"
		src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
		charset="utf-8"></script>
	<script type="text/javascript">
		/* $("#member").hover(function(){
			$(this).css("background-color","#fb771a");
			$(this).css("color","white");
			$(this).css("border","1px solid darken")
		},function(){
			$(this).css("background-color","white");
			$(this).css("color","black");
			$(this).css("border","none")
		}); */
		$("#partner").hover(function(){
			$(this).css("background-color","#fb771a");
			$(this).css("color","white");
		},function(){
			$(this).css("background-color","white");
			$(this).css("color","black");
		});
		$("#member").click(function(){
			$(this).unbind("mouseenter mouseleave");
			$(this).css("background-color","#fb771a");
			$(this).css("color","white");
			$("#partner").css("background-color","white");
			$("#partner").css("color","black");
			$("#partner").hover(function(){
				$(this).css("background-color","#fb771a");
				$(this).css("color","white");
			},function(){
				$(this).css("background-color","white");
				$(this).css("color","black");
			});
			$("form").attr("action", "${pageContext.request.contextPath}/");
		})
		$("#partner").click(function(){
			$(this).unbind("mouseenter mouseleave");
			$(this).css("background-color","#fb771a");
			$(this).css("color","white");
			$("#member").css("background-color","white");
			$("#member").css("color","black");
			$("#member").hover(function(){
				$(this).css("background-color","#fb771a");
				$(this).css("color","white");
			},function(){
				$(this).css("background-color","white");
				$(this).css("color","black");
			});
			$("form").attr("action", "${pageContext.request.contextPath}/login/join");
		})
		$("#member").click(function() {	
			$("#signup").empty();

			$("#signup").append(`
					<div>
					<a href= "${pageContext.request.contextPath}/login/join">회원가입</a>
					</div>
					<div><span>간편 회원가입</span></div>
					<div style="">
					<div id="kakaoIdLogin" style="width:50%"><a href="javascript:kakaoLogin();"><img style="height:30px; float:left"
					src="${pageContext.request.contextPath }/resources/img/login/kakao(small).png" /></a></div>
				<!-- 네이버아이디로로그인 버튼 노출 영역 -->
				<div id="naverIdLogin" style="width:50px; float:left"></div>
				</div>
				
			`);
			naverLogin.init();
		})
		function signup(){
			console.log("a");
			$("#signup").empty();
			$("#signup").append(`
					<div>
					<a href= "${pageContext.request.contextPath}/login/join">회원가입</a>
					</div>
					<div style="float:left">simple sign-up</div>
					<div>
					<center>
					<div id="kakaoIdLogin" style="float:left ;"><a href="javascript:kakaoLogin();"><img style="height:30px;"
					src="${pageContext.request.contextPath }/resources/img/login/kakao(small).png" /></a></div>
				<!-- 네이버아이디로로그인 버튼 노출 영역 -->
				<div id="naverIdLogin" style="float:left"></div>
				</center>
				</div>
				
			`);
			naverLogin.init();
		}
		
		//5c6d82719e6ed5dadc3748bfa3626208
	window.Kakao.init("5c6d82719e6ed5dadc3748bfa3626208");
	function kakaoLogin(){
		window.Kakao.Auth.login({
			scope:'profile_nickname,account_email,gender,birthday',
			success:  function(authObj){
				console.log(authObj);
				window.Kakao.API.request({
					url:'/v2/user/me',
					success: res=>{
						const kakao_account = res.kakao_account;
						const profile_nickname = res.profile_nickname;
						const gender = res.gender;
						const birthday = res.birthday;
						console.log(kakao_account);
						console.log(profile_nickname);
						console.log(gender);
						console.log(birthday);
					}
				})
			}
		});
	}
		 var naverLogin = new naver.LoginWithNaverId(
			      {
			         clientId: "sXlcLI1HgQL5ac8D8aIQ",
			         callbackUrl: "http://localhost:8090/finalproject/login/naverCallback",
			         isPopup: false,
			         loginButton: {color: "green", type: 1, height: 30}
			      }
			   );
		 signup();
			   
		</script>
</body>
</html>