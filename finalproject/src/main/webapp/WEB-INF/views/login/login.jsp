<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src ="${pageContext.request.contextPath }/resources/js/vendor/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<body>
	<a href="javascript:kakaoLogin();"><img
		src="${pageContext.request.contextPath }/resources/img/login/kakao_login_medium_narrow.png" /></a>
	<!-- 네이버아이디로로그인 버튼 노출 영역 -->
	<div id="naverIdLogin"></div><br>
	<a href= "${pageContext.request.contextPath}/login/join">회원가입</a>
	
</body>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
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
		/*
		var naver_id_login = new naver_id_login("sXlcLI1HgQL5ac8D8aIQ","http://localhost:8081/finalproject/login/naverCallback");
		var state = naver_id_login.getUniqState();
		naver_id_login.setButton("green", 3,50);
		naver_id_login.setDomain("http://localhost:8081/finalproject/login/login");
		naver_id_login.setState(state);
		//naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			// naver_id_login.getProfileData('프로필항목명');
			// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
			
			console.log(naver_id_login.getProfileData('name'));
			console.log(naver_id_login.getProfileData('email'));
			console.log(naver_id_login.getProfileData('gender'));
			console.log(naver_id_login.getProfileData('birthday'));
			console.log(naver_id_login.getProfileData('birthyear'));
			console.log(naver_id_login.getProfileData('mobile'));
		}


		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		*/
		 var naverLogin = new naver.LoginWithNaverId(
			      {
			         clientId: "sXlcLI1HgQL5ac8D8aIQ",
			         callbackUrl: "http://localhost:8090/finalproject/login/naverCallback",
			         isPopup: false,
			         loginButton: {color: "green", type: 3, height: 60}
			      }
			   );
			   naverLogin.init();
</script>
</html>















