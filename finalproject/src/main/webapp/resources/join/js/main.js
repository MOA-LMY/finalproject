$(function() {

    $('.btn-link[aria-expanded="true"]').closest('.accordion-item').addClass('active');
  $('.collapse').on('show.bs.collapse', function () {
	  $(this).closest('.accordion-item').addClass('active');
	});

  $('.collapse').on('hidden.bs.collapse', function () {
	  $(this).closest('.accordion-item').removeClass('active');
	});

    

});
	var idcheck = false;
	var pwdcheck = false;
	var pwd2check = false;
	var phonecheck = false;
	var emailcheck = false;
	var namecheck = false;
	var birthcheck =false;
	var addresscheck = false;
	var redcheck = document.createElement("img");
	redcheck.src = "/finalproject/resources/join/images/Redcheck.png";
	$(redcheck).css("width", "25px");
	$(redcheck).css("margin-left","10px");
	var greencheck = document.createElement("img");
	greencheck.src = "/finalproject/resources/join/images/Greencheck.png";
	$(greencheck).css("width", "25px");
	$(greencheck).css("margin-left","10px");

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
  		pwdcheck=true;
		}else{
  		$("#password").css("border","1px solid red");
  		pwdcheck=false;
  		}
  	})
  	$("#re-password").focusin(function() {
  		
  		$("#re-password").css("border","1px solid black");
  		$("#re-password").css("background-color","white");
  		$("#re-password").prop("placeholder","");
		
  	})
  	$("#re-password").focusout(function() {
  	if($("#re-password").val()==$("#password").val()){
  		console.log($(this).prev());
  		$("#re-password").css("border","")
  		$("#re-password").css("background-color","");
  		$("#re-password").prev().empty();
  		$("#re-password").prev().append(greencheck);
  		$("#password").prev().empty();
  		$("#password").prev().append(greencheck)
  		pwd2check = true;
  		}else if($("#re-password").val().length==0){
  		$(this).prev().empty();
  		pwd2check = false;
  		}
  		else{
  		$("#re-password").css("border","1px solid red");
  		pwd2check = false;
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
  	$("#detail_addr").focusin(function() {
  		$("#detail_addr").css("border","1px solid black");
  		$("#detail_addr").css("background-color","white");
  		$("#detail_addr").prop("placeholder","");

  	})
  	$("#detail_addr").focusout(function() {
  		$("#detail_addr").css("border","")
  		$("#detail_addr").css("background-color","");
  		$("#detail_addr").prop("placeholder","나머지 주소 입력");

  	})
  	
  	$("#code").focusin(function() {
  		$("#code").css("border","1px solid black");
  		$("#code").css("background-color","white");
  		$("#code").prop("placeholder","");

  	})
  	$("#code").focusout(function() {
  		$("#code").css("border","")
  		$("#code").css("background-color","");
  		$("#code").prop("placeholder","input-code");

  	})

	$("#password").keyup(function() {
  		let password = $("#password").val();
  		if(password.length<=3){
  			$("#password").css("border","1px solid red");
  			$(this).prev().empty();
  			$(this).prev().append(redcheck);
 
  			
  			
  			}else{
  			$("#password").css("border","1px solid green")
  			$(this).prev().empty();
  			 $(this).prev().append(greencheck);
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
  			$("#re-password").css("border","1px solid green")
  			$(this).prev().empty();
  			$(this).prev().append(greencheck);
  		}
  		
  	})