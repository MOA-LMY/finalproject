<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
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
<body>


	<div class="half">
		<div class="bg order-1 order-md-2"
			style="background-image: url('${pageContext.request.contextPath}/resources/join/images/bg_1.jpg');"></div>
		<div class="contents order-2 order-md-1">

			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-6">
						<div class="form-block" style="height: 1000px;">
							<div class="text-center mb-3">
								<h3>Register</h3>

						</div>
							<form action="${pageContext.request.contextPath }/login/join" method="post"
								onsubmit="return finalcheck()">
								<div class="form-group first">
									<label for="id">ID</label>
									<div>
										<input type="text" class="form-control" placeholder="Your Id"
											id="id" style="height: 40px; width: 80%; color:black; float: left;" name="m_id">
										<button class="btn-sm btn-primary"
											style="margin-top: 2px; margin-left: 10px; width: 15%; height: 35px;"
											id="checkId">Check</button>
									</div>
									<p style="margin-top: 10px">
										<span id="idSpan"></span>
									<p>
								</div>
								<div class="form-group">
									<label for="password">Password</label><span></span> <input
										type="password" class="form-control"
										placeholder="at least 4 characters" id="password" name="m_pwd"
										style="height: 40px;">
								</div>

								<div class="form-group">
									<label for="re-password">Re-type Password</label> <span></span>
									<input type="password" class="form-control"
										placeholder="Re-type Your Password" id="re-password"
										style="height: 40px;color:black;">

								</div>
								<div class="form-group">
									<label for="name">Name</label> <input type="text"
										class="form-control" placeholder="Park Chan Yung" id="name" name="m_name" value="${name }"
										style="height: 40px;color:black;">
								</div>
								<div class="form-group">
									<label for="name">Birth</label> <input type="text"
										class="form-control" value="${birthyear}-${birthday}" style="height: 40px;color:black;" id="birth" name="m_birth" placeholder="yyyy-mm-dd">
								</div>
								<div class="form-group">
									<label for="name">Phone</label> <input type="text"
										class="form-control" placeholder="01012345678" id="phone" name="m_phone" value="${phone}"
										style="height: 40px;color:black;">
								</div>
								<div class="form-group">
									<label for="name">Address</label>
									<button id="btn3" class="btn-sm btn-primary"
											style="margin-top: 2px; margin-left: 10px; width: 20%; height: 35px;"onclick="sample6_execDaumPostcode()">search</button>
											 <input type="text"
										class="form-control" placeholder="" id="address" name="m_addr" value="" readonly="readonly" onclick="sample6_execDaumPostcode()"
										style="height: 40px;"><br>
										<label for="name">Detail Address</label> 
										<input type="text"	class="form-control" placeholder="" id="detail_addr" name="m_detail_addr" value="" style="height: 40px;color:black;">
										<input type="hidden" id="sample6_postcode" placeholder="우편번호">
										<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
								</div>
								<div class="form-group last mb-3">
									<label for="username">Email Address</label>
									<div>
										<input type="text" class="form-control"
											placeholder="your-email@gmail.com" id="email" name="m_email" value="${email}"
											style="height: 40px; width: 80%;color:black; float: left">
										<button id="btn1" class="btn-sm btn-primary"
											style="margin-top: 2px; margin-left: 10px; width: 15%; height: 35px;">Send</button>
									</div>
									<div style="margin-top: 10px;">
										<input type="text" class="form-control"
											placeholder="input-code" id="code"
											style="height: 40px; color:black;width: 35%; float: left"
											disabled="disabled">
										<button id="btn2" class="btn-sm btn-primary"
											style="margin-top: 2px; margin-left: 10px; width: 15%; height: 35px;">commit</button>
										<span id="span" class="captain"></span>
									</div>
								</div>
								<div class="d-sm-flex mb-5 align-items-center">
									<label class="control control--checkbox mb-5 mb-sm-0"><span
										class="caption">Agree our <a href="#">Terms and
												Conditions</a></span> <input type="checkbox" id="checkbox" />
										<div class="control__indicator"></div> </label> <span class="ml-auto"><a
										href="${pageContext.request.contextPath }/login/login" class="forgot-pass">Have an account? Login</a></span>
								</div>
								<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">

								<input type="submit" disabled="disabled" value="Register"
									class="btn btn-block btn-primary" id="submit">

							</form>
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
		
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
<script type="text/javascript">

	console.log(idcheck)
	var key = "-";
	$("#btn1").click(function() {

		alert("인증번호가 전송되었습니다.")
		$("#code").prop("disabled", false)
		var email = $("#email").val()
		$.ajax({
			url : "${pageContext.request.contextPath}/members/email",
			data : {
				"email" : email
			},
			dataType : "json",
			success : function(json) {
				key = json.key;
				if(key=="fail"){
					alert("옳바르지 않은 형식의 이메일 입니다.")
				}

			}
		})
		return false;
	});
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
			$("#span").append(greencheck);
		}
		return false;
	})
	$("#checkId").click(function() {
		$("#idSpan").empty();
		var id = $("#id").val();
		var result = "";
		$.ajax({
			url : "${pageContext.request.contextPath}/members/isMember",
			data : {
				"id" : id
			},
			dataType : "json",
			success : function(json) {
				result = json.result;
				if (id.length < 4) {
					$("#idSpan").css("color", "red");
					$("#idSpan").append("*at least 4 characters")
					idcheck = false;
				} else if (result == true) {
					$("#idSpan").css("color", "red");
					$("#idSpan").append("*already used")
					idcheck = false;
				} else {
					$("#idSpan").css("color", "green");
					$("#idSpan").append("available")
					idcheck = true;
				}
			}

		})
		return false
	})
	$("#checkbox").click(function() {

		if($("#checkbox").prop("checked")){
			console.log("a");
			$("#submit").prop("disabled", false);
		} else {
			$("#submit").prop("disabled", true);
		}
	})

	function finalcheck() {
		if ($("#phone").val().length > 0) {
			phonecheck = true;
		}
		if ($("#name").val().length > 0) {
			namecheck = true;
		}
		if ($("#birth").val().length > 0) {
			birthcheck = true;
		}
		
		
		
		console.log("idcheck : " + idcheck);
		console.log("pwdcheck : " + pwdcheck);
		console.log("pwd2check : " + pwd2check);
		console.log("phonecheck : " + phonecheck);
		console.log("emailcheck : " + emailcheck);
		console.log("namecheck : " + namecheck);
		console.log("birthcheck : " + birthcheck);
		if($("#address").val().length<1){
			return false;
		}
		if($("#detail_addr").val().length<1){
			return false;
		}
		if (idcheck == true && pwdcheck == true && pwd2check == true
				&& phonecheck == true && emailcheck == true
				&& namecheck == true && birthcheck == true) {
			return true;
		} else {
			return false;

		}
	}
	console.log($("#birth").val())
	if($("#birth").val()=="-"){
		$("#birth").val("");
	}
	$("#birth").datepicker({
		changeMonth:true,
		changeYear: true,
		minDate: new Date(1900,1-1,1),
		maxDate: new Date(2020,12-1,31),
		yearRange:"1910:",
		prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        dateFormat: 'yy-mm-dd'

	});
	
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
	                document.getElementById("address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("detail_addr").focus();
	            }
	        }).open();
	    }
	
</script>
</html>