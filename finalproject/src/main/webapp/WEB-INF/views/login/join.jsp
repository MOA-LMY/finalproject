<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/fonts/icomoon/style.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/join/css/style.css">

    <title>Sign Up #3</title>
    <style type="text/css">
    .mystyle{
	border:1px solid black;
	background-color: white;
	}
    
    </style>
  </head>
  <body>
  

  <div class="half">
    <div class="bg order-1 order-md-2" style="background-image: url('${pageContext.request.contextPath}/resources/join/images/bg_1.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-6">
            <div class="form-block" style="height:1000px;">
              <div class="text-center mb-5">
              <h3>Register</h3>
              
              </div>
              <form action="${pageContext.request.contextPath }/" method="post" onsubmit="return finalcheck()">
                <div class="form-group first">
                  <label for="id">ID</label>
                  <div>
                  <input type="text" class="form-control" placeholder="Your Id" id="id" style="height:40px; width:80%;float: left;">
                   <button class="btn-sm btn-primary" style="margin-top:2px;margin-left:10px; width:15%;height:35px;" id="checkId">Check</button>
                  </div>
                  <p style="margin-top:10px">
                  <span id="idSpan"></span>
                  <p>
                </div>
                   <div class="form-group">
                  <label for="password">Password</label><span></span>
                  <input type="password" class="form-control" placeholder="at least 4 characters" id="password" style="height:40px;">
                </div>
                
                <div class="form-group">
                  <label for="re-password">Re-type Password</label> <span></span>
                  <input type="password" class="form-control" placeholder="Re-type Your Password" id="re-password" style="height:40px;">
                 
                </div>
                <div class="form-group">
                  <label for="name">Name</label>
                  <input type="text" class="form-control" placeholder="Park Chan Yung" id="name" style="height:40px;">
                </div>
                 <div class="form-group">
                  <label for="name">Birth</label>
                  <input type="date" class="form-control" value="" style="height:40px;" id="birth">
                </div>
                <div class="form-group">
                  <label for="name">Phone</label>
                  <input type="text" class="form-control" placeholder="01012345678" id="phone" style="height:40px;">
                </div>
                <div class="form-group last mb-3">
                  <label for="username">Email Address</label>
                  <div>
                   <input type="text" class="form-control" placeholder="your-email@gmail.com" id="email" 
                  style="height:40px; width:80%;float: left"> 
                <button id="btn1" class="btn-sm btn-primary" style="margin-top:2px;margin-left:10px; width:15%;height:35px;">Send</button>
                  </div>
                    <div style="margin-top:10px;">
                   <input type="text" class="form-control" placeholder="input-code" id="code" 
                  style="height:40px; width:35%;float: left" disabled="disabled"> 
                <button id="btn2" class="btn-sm btn-primary" style="margin-top:2px;margin-left:10px; width:15%;height:35px;">commit</button>
                <span id="span" class="captain"></span>
                  </div>
                </div>
                <div class="d-sm-flex mb-5 align-items-center">
                  <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Agree our <a href="#">Terms and Conditions</a></span>
                    <input type="checkbox" id="checkbox"/>
                    <div class="control__indicator"></div>
                  </label>
                  <span class="ml-auto"><a href="#" class="forgot-pass">Have an account? Login</a></span> 
                </div>

                <input type="submit" disabled="disabled" value="Register" class="btn btn-block btn-primary" id="submit">

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="${pageContext.request.contextPath}/resources/join/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/join/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/join/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/join/js/main.js"></script>
  </body>
  <script type="text/javascript">
  console.log(idcheck)
  var key = ""; 
	$("#btn1").click(function() {
		
		alert("인증번호가 전송되었습니다.")
		$("#code").prop("disabled",false)
		var email = $("#email").val()
		$.ajax({
			url : "${pageContext.request.contextPath}/members/email",
			data:{"email":email},
			dataType : "json",
			success : function(json) {
				key = json.key;
				
			}
		})
		return false;
	});
	$("#btn2").click(function() {
		console.log("key :" + key)
		var code = $("#code").val();
		if(code!=key){
			alert("인증번호가 맞지 않습니다.")
			$("#span").empty();
			$("#span").append(redcheck);
			
		}else{
			$("#span").empty();
			alert("인증완료!")
			emailcheck= true;
			$("#span").append(greencheck);
		}
		return false;
	})
	$("#checkId").click(function(){
		$("#idSpan").empty();
		var id = $("#id").val();
		var result = "";
		$.ajax({
			url: "${pageContext.request.contextPath}/members/isMember",
			data:{"id":id},
			dataType : "json",
			success: function(json){
				result = json.result;
				if(id.length<4){
					$("#idSpan").css("color","red");
					$("#idSpan").append("*at least 4 characters")
					idcheck = false;
				}
				else if(result==true){
					$("#idSpan").css("color","red");
					$("#idSpan").append("*already used")
					idcheck = false;
				}else{
					$("#idSpan").css("color","green");
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
			$("#submit").prop("disabled",false);
		}else{
			$("#submit").prop("disabled",true);
		}
	})
	
	function finalcheck(){
		if($("#phone").val().length>0){
			phonecheck = true;
		}
		if($("#name").val().length>0){
			namecheck = true;
		}
		if($("#birth").val().length>0){
			birthcheck = true;
		}
		console.log("idcheck : "+idcheck);
		console.log("pwdcheck : "+pwdcheck);
		console.log("pwd2check : "+pwd2check);
		console.log("phonecheck : "+phonecheck);
		console.log("emailcheck : "+emailcheck);
		console.log("namecheck : "+namecheck);
		console.log("birthcheck : "+birthcheck);
		
		if(idcheck==true&&pwdcheck==true&&pwd2check==true
				&&phonecheck==true&&emailcheck==true
				&&namecheck==true&&bitrhcheck==true){
			return true;
		}else{
		return false;
			
		}
	}
	
  </script>
</html>