$(function() {

    $('.btn-link[aria-expanded="true"]').closest('.accordion-item').addClass('active');
  $('.collapse').on('show.bs.collapse', function () {
	  $(this).closest('.accordion-item').addClass('active');
	});

  $('.collapse').on('hidden.bs.collapse', function () {
	  $(this).closest('.accordion-item').removeClass('active');
	});

    

});

$("#id").focusin(function() {
  		$("#id").css("border","1px solid black");
  		$("#id").css("background-color","white");
  		$("#id").prop("placeholder","");

  	})
  	$("#id").focusout(function() {
  		$("#id").css("border","")
  		$("#id").css("background-color","");
  		$("#id").prop("placeholder","Your Id");

  	})
  	$("#password").focusin(function() {
  		$("#password").css("border","1px solid black");
  		$("#password").css("background-color","white");
  		$("#password").prop("placeholder","");

  	})
  	$("#password").focusout(function() {
  		if($("#password").val().length>3||$("#password").val().length==0){
  		$("#password").css("border","")
  		$("#password").css("background-color","");
  		$("#password").prop("placeholder","at least 4 characters");
		}else if($("#password").val().length==0){
  		document.getElementById("password").previousElementSibling.innerHTML=" ";
  		}else{
  		$("#password").css("border","1px solid red");
  		}
  	})
  	$("#re-password").focusin(function() {
  		
  		$("#re-password").css("border","1px solid black");
  		$("#re-password").css("background-color","white");
  		$("#re-password").prop("placeholder","");
		
  	})
  	$("#re-password").focusout(function() {
  	if($("#re-password").val()==$("#password").val()){
  		$("#re-password").css("border","")
  		$("#re-password").css("background-color","");
  		$("#re-password").prop("placeholder","Re-type Your Password");
  		}else if($("#re-password").val().length==0){
  		document.getElementById("re-password").previousElementSibling.innerHTML=" ";
  		}
  		else{
  		$("#re-password").css("border","1px solid red");
  		}
  	})
  	$("#name").focusin(function() {
  		$("#name").css("border","1px solid black");
  		$("#name").css("background-color","white");
  		$("#name").prop("placeholder","");

  	})
  	$("#name").focusout(function() {
  		$("#name").css("border","")
  		$("#name").css("background-color","");
  		$("#name").prop("placeholder","Park Chan Yung");

  	})
  	$("#phone").focusin(function() {
  		$("#phone").css("border","1px solid black");
  		$("#phone").css("background-color","white");
  		$("#phone").prop("placeholder","");

  	})
  	$("#phone").focusout(function() {
  		$("#phone").css("border","")
  		$("#phone").css("background-color","");
  		$("#phone").prop("placeholder","01012345678");

  	})
  	$("#email").focusin(function() {
  		$("#email").css("border","1px solid black");
  		$("#email").css("background-color","white");
  		$("#email").prop("placeholder","");

  	})
  	$("#email").focusout(function() {
  		$("#email").css("border","")
  		$("#email").css("background-color","");
  		$("#email").prop("placeholder","your-email@gmail.com");

  	})
  	let redcheck = "<img style='margin-left:10px;' src='${pageContext.request.contextPath}/resources/join/images/Redcheck.png' width='25px;'>";
	let greencheck = "<img style='margin-left:10px;' src='${pageContext.request.contextPath}/resources/join/images/Greencheck.png' width='25px;'>";
	$("#password").keyup(function() {
  		let password = $("#password").val();
  		if(password.length<=3){
  			$("#password").css("border","1px solid red");
  			document.getElementById("password").previousElementSibling.innerHTML=redcheck;
  		}else{
  			$("#password").css("border","1px solid green")
  			document.getElementById("password").previousElementSibling.innerHTML=greencheck;
  		}
  		
  	})
  	$("#re-password").keyup(function() {
  		let password = $("#password").val();
  		let repassword = $("#re-password").val();
  		if(password!=repassword){
  			$("#re-password").css("border","1px solid red");
  			document.getElementById("re-password").previousElementSibling.innerHTML=redcheck;
  		}else{
  			$("#re-password").css("border","1px solid green")
  			document.getElementById("re-password").previousElementSibling.innerHTML=greencheck;
  		}
  		
  	})