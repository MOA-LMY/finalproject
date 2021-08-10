<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"></script>
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId:"sXlcLI1HgQL5ac8D8aIQ",
			callbackUrl:"http://localhost:8090/finalproject/login/naverCallback",
			isPopup: false,
			callbackHandle: true
		}	
	);
	naverLogin.init();
	window.addEventListener('load', function () {
        naverLogin.getLoginStatus(function (status) {

           if (status) {
              var email = naverLogin.user.getEmail();
              var name = naverLogin.user.getName();
              var gender = naverLogin.user.getGender();
              var birthday = naverLogin.user.getBirthday();
              var birthyear = naverLogin.user.getBirthyear();
              var mobile = naverLogin.user.getMobile();
              var list = {"email":email,"name":name,"gender":gender,"birthday":birthday,"birthyear":birthyear,"mobile":mobile}
              console.log(email);
              console.log(name);
              console.log(gender);
              console.log(birthday);
              console.log(birthyear);
              console.log(mobile);
              if( email == undefined || email == null) {
                 alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                 naverLogin.reprompt();
                 return;
              }
              alert( name+"님 환영합니다." );
               window.location.replace("${pageContext.request.contextPath}/login/join?email="+email+"&name="+name+"&gender="+gender+
            		  "&birthday="+birthday+"&birthyear="+birthyear+"&mobile="+mobile);
           } else {
              console.log("callback 처리에 실패하였습니다.");
           }
        });
     });
	</script>
</body>
</html>