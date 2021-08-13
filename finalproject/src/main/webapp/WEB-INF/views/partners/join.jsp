<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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


<title>Sign Up #3</title>
<style type="text/css">
.mystyle {
	border: 1px solid black;
	background-color: white;
}
</style>

</head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/finalproject/resources/join/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/join/js/main.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	

	$("#btn1").click(function(){
		let id = $("#id").val();
		$.ajax({
			url:"${pageContext.request.contextPath}/idCheck",
			data: {"id":id},
			dataType:"json",
			success:function(data){
				if (id.length < 4) {
					$("#idSpan").css("color", "red");
					$("#idSpan").append("*at least 4 characters")
				} else if(data.using==true){
					$("#idSpan").css("color", "red");
					$("#idSpan").html("*already used");
				}else {
					$("#idSpan").css("color", "green");
					$("#idSpan").html("available");
				}
			}
		});
		return false;
	});
	$("#password").keyup(function() {
        let password = $("#password").val();
        
        if(password.length<=3){
           $("#password").css("border","1px solid red");
           $(this).prev().empty();
           $(this).prev().append(redcheck);
             pwdCheck=false;

           }else{
              $("#password").css("border","1px solid green")
                $(this).prev().empty();
                 $(this).prev().append(greencheck);

           let repassword = $("#re-password").val();
           if(password==repassword){
              $("#re-password").css("border","1px solid green")
                $("#re-password").prev().empty();
                $("#re-password").prev().append(greencheck);
            
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

        }else{
           if(password.length<4){

           }else{
              $("#password").prev().empty();
              $("#password").prev().append(greencheck);
           }
           $("#re-password").css("border","1px solid green")
           $(this).prev().empty();
           $(this).prev().append(greencheck);
           
        }
        
     })
});
</script>


<body>

	<div class="half">
		<div class="bg order-1 order-md-2"
			style="background-image: url('${pageContext.request.contextPath}/resources/join/images/bg_1.jpg');"></div>
		<div class="contents order-2 order-md-1">

			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-6">
						<div class="form-block" style="height: 1000px;">
							<div class="text-center mb-5">
								<h3>Register</h3>

						</div>

<h1>파트너쉽가입</h1>
<form method="post" action="${pageContext.request.contextPath}/insert">
	<div class="form-group first">
	ID<br>
	<input type="text"class="form-control" name="pt_id" id="id" style="height: 40px; width: 80%; float: left;" placeholder="Your Id">
	<input type="button" class="btn-sm btn-primary" style="margin-top: 2px; margin-left: 10px; width: 15%; height: 35px;" value="Check" id="btn1">

	<span id="idcheck"></span>
		<p style="margin-top: 10px">
		<span id="idSpan"></span>
		<p>
	
	<div class="form-group">
	Password<br>
	<input type="password" id="password" class="form-control" placeholder="at least 4 characters" name="pt_pwd" placeholder="at least 4 characters" style="height: 40px;">
	
	<div class="form-group">
		<label for="re-password">Re-type Password</label> <span></span>
		<input type="password" class="form-control"
			placeholder="Re-type Your Password" id="re-password"
			style="height: 40px;">
	</div>
	
	<div class="form-group">
	Name<br>
	<input type="text" class="form-control" style="height: 40px;" name="pt_name" placeholder="Park Chan Yung">
	</div>
	
	<div class="form-group">
	Phone<br>
	<input type="text" name="pt_phone" class="form-control" placeholder="01012345678" style="height: 40px;">
	</div>
	
	<div class="form-group">
	Email Address<br>
	<input type="text" name="pt_email" class="form-control" placeholder="your-email@gmail.com" style="height: 40px;">
	</div>
	
	<div class="form-group">
	Address<br>
	<input type="text" name="pt_addr" id="sample6_postcode" class="form-control" placeholder="zip code" style="height: 40px; width: 80%; float: left">
	<input type="button" onclick="sample6_execDaumPostcode()" class="btn-sm btn-primary" style="margin-top: 2px; margin-left: 10px; width: 15%; height: 35px;" value="Find"><br>
	<input type="text" id="sample6_address" class="form-control" placeholder="address"   style="height: 40px;width: 80%;float: left;"><br>
	<input type="text" id="sample6_detailAddress" class="form-control" placeholder="detailed address" style="height: 40px;width: 50%;float: left">
	<input type="text" id="sample6_extraAddress" class="form-control" placeholder="notes" style="height: 40px;width: 30%;">
	</div>
	
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
	
	<div class="form-group">
	Business License<br>
	<input type="text" name="pt_code" class="form-control" placeholder="0000000000" style="height: 40px;"><br>
	
	<div class="d-sm-flex mb-5 align-items-center">
									<label class="control control--checkbox mb-3 mb-sm-0"><span
										class="caption">Agree our <a href="#">Terms and
												Conditions</a></span> <input type="checkbox" id="checkbox" />
										<div class="control__indicator"></div> </label> <span class="ml-auto"><a
										href="${pageContext.request.contextPath }/login/login" class="forgot-pass">Have an account? Login</a></span>
								</div>
	<input type="submit" class="btn btn-block btn-primary" value="Register">
	</div>

</form>
</body>
</html>