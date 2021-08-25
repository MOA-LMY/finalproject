<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Exo);
html, body {
  font-family: "Exo", sans-serif;
  background-color: #333;
  height: 100%;
  width: 100%;
  position: relative;
}

a.btn.btn-info.btn-sm' {
  text-decoration: none;
  padding: 20px;
  display: inline-block;
  border: 1px solid #fff;
  position: absolute;

  color: #fff;
  transform: translate(-50%, -50%);
  transition: all 0.4s;
}
a.btn.btn-info.btn-sm:hover {
  border-color: #3ac28c;
  color: #3ac28c;
}

.modal-overlay {
  background: #333;
  bottom: 0;
  left: 0;
  position: fixed;
  right: 0;
  text-align: center;
  text-shadow: none;
  top: 0;
  opacity: 0;
  transform: scale(0.5);
  transition: all 0.75s cubic-bezier(0.68, -0.55, 0.265, 1.55);
  z-index: -100;
}

.modal-wrapper {
  padding: 1em 0;
  position: relative;
  margin: 0 auto;
  max-width: 500px;
  width: 90%;
}
.modal-wrapper .close {
  padding: 14px;
  position: absolute;
  right: 0.5em;
  top: 2.5em;
  width: 1.5em;
  cursor: pointer;
}
.modal-wrapper .close:before, .modal-wrapper .close:after {
  content: "";
  position: absolute;
  display: block;
  width: 2px;
  height: 36px;
  background-color: aqua;
  top: -5px;
}
.modal-wrapper .close:before {
  transform: rotate(45deg);
}
.modal-wrapper .close:after {
  transform: rotate(-45deg);
}
.modal-wrapper h2 {
  color: #fff;
  margin-bottom: 1em;
  text-transform: uppercase;
}

@media (min-width: 50em) {
  .modal-wrapper {
    padding: 1.75em;
  }
}
@media (min-height: 37.5em) {
  .modal-wrapper {
    left: 50%;
    position: absolute;
    top: 50%;
    transform: translate(-50%, -50%);
  }
}
.active + .modal-overlay {
  opacity: 1;
  transform: scale(1);
  z-index: 800;
}

.message-form {
  clear: both;
  height: 350px;
}
.message-form .input-button {
  text-align: center;
  padding: 20px;
}
.message-form .input-button .button {
  border: 1px solid #fff;
  background-color: transparent;
  padding: 10px 20px;
  transition: all 0.4s;
  color: #fff;
  font-family: "Exo", sans-serif;
  cursor: pointer;
}
.message-form .input-button .button:hover {
  color: aqua;
  border-color: aqua;
}


.message-form .input-button .bt {
  border: 1px solid #fff;
  background-color: transparent;
  padding: 10px 20px;
  transition: all 0.4s;
  color: #fff;
  font-family: "Exo", sans-serif;
  cursor: pointer;
}
.message-form .input-button .bt:hover {
  color: aqua;
  border-color: aqua;
}

.message-form .input-box {
  font-size: 16px;
  line-height: 24px;
  width: 100%;
  height: 72px;
  display: block;
  position: relative;
}
.message-form .input-box.focus .input-label {
  color: aqua;
  transform: perspective(1px) scale(0.75) translate3d(0, -18px, 0);
}
.message-form .input-box.focus .underline-focus {
  transform: scaleX(1);
}
.message-form .input-box.focus.textarea {
  overflow-y: hidden;
  height: 200px;
  /* approximate max height */
  padding: 0 0 60px;
}
.message-form .input-box.focus.textarea .input-text {
  max-height: 200px;
  margin-top: 45px;
  padding-top: 0;
}
.message-form .input-box.textarea {
  transition-property: all;
  transition-duration: 0.5s;
  transition-timing-function: cubic-bezier(0, 1, 0.5, 1);
}
.message-form .input-box.textarea .input-text {
  resize: none;
  overflow: hidden;
}
.message-form .input-box .input-label {
  position: absolute;
  line-height: 48px;
  opacity: 1;
  color: #666;
  transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
  top: 24px;
  transform: scale(1) translate3d(0, 0, 0);
  transform-origin: left top 0;
}
.message-form .input-box .input-text {
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  position: relative;
  width: 100%;
  height: 100%;
  border: 0;
  outline: none;
  background-color: transparent;
  color: #fff;
  box-sizing: border-box;
  padding-top: 36px;
  box-shadow: none;
  padding-left: 0;
  font-size: 18px;
}
.message-form .input-box .underline {
  border: 0;
  border-bottom: solid 1px #e0e0e0;
  position: absolute;
  width: 100%;
  bottom: 8px;
  margin: 0;
  box-sizing: content-box;
  height: 0;
}
.message-form .input-box .underline-focus {
  border-style: none none solid;
  border-bottom-width: 2px;
  position: absolute;
  width: 100%;
  bottom: 8px;
  margin: 0;
  box-sizing: content-box;
  height: 0;
  border-color: aqua;
  transform: scaleX(0);
  transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
	<!-- 폰트적용 Montserrat -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap">
	<!-- 폰트적용 Hahmlet -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap">
	<!-- style.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>

<body>
	<!-- sidebar -->
  	<jsp:include page="sidebar.jsp"/>


<!-- blank section -->
<section>
	<div class="blank-section"></div>
</section>


<!-- table section -->
<section>

<div class="container-fluid setting-font">
	<div class="row mb-5">
		<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
		
			<!-- search -->
			<div class="col-12">
				<h3>리뷰 관리</h3>
				<div class="table-search">
					<form action="" method="post">
						<div class="row">
							<select name="field" id="field" class="form-control col-sm-2 p-2" aria-label=".form-select-sm example">
								<option value="">작성자</option>
								<option value="">제목</option>
								<option value="">내용</option>
							</select>
							<input type="text" class="form-control col-sm-3 p-2" name="keyword" id="keyword">
							<input type="submit" class="form-control btn-secondary col-sm-1 p-2" value="검색">
						</div>
					</form>
				</div>
			</div>
			
			<!-- table -->
			<table class="table text-center table-dark table-hover">
				<thead>
					<tr class="text-muted">
						<th>글번호</th>
						<th>만족도</th>
						<th>작성자</th>
						<th>제목</th>
						<th>내용</th>
						<th>작성일</th>
						<th>답변상태</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="vo" items="${list }">
					<tr>
						<td>${vo.rb_num }</td>
						<td>${vo.rb_stars }</td>
						<td>${vo.m_id }</td>
						<td>${vo.rb_title }</td>
						<td>${vo.rb_content }</td>
						<td>${vo.rb_date }</td>
						<c:choose>
							<c:when test="${vo.replyCheck eq null}">
								<td><a href="#" class="btn btn-info btn-sm">답글작성하기</a><div class="modal-overlay">
								  <div class="modal-wrapper">
								    <label class="close" for=""></label>
								    <h2 id="modal-title">리뷰후기답변작성</h2>
								    <form class="message-form" action="" onsubmit="return false;">
								      <img src="${pageContext.request.contextPath}/resources/img/goods/${vo.rb_saveimg}" width="200px;">
								      <div class="input-box">
								        <label for="" class="input-text"><i>[상품정보]:</i> <i>${vo.g_name}</i>  <i>/</i> <i>${vo.c_colorname}</i> <i>/</i> <i>${vo.sz_sizename}</i></label>
								        <hr class="underline">
								        <hr class="underline-focus">
								      </div>
								      
								      <div class="input-box">
								        <label for="" class="input-label" style=" top:-1px;" >[회원아이디]:${vo.m_id}</label>
								        <input type="text" class="input-text" readonly="readonly" value="[리뷰글]: ${vo.rb_content }" style="left:100px; bottom: 5px;">
								        <hr class="underline">
								        <hr class="underline-focus">
								      </div>
								      <div class="input-box textarea">
								        <label for="" class="input-label" style="color: aqua;">[답변작성란]:</label>
								        <textarea class="input-text"></textarea>
								        <hr class="underline">
								        <hr class="underline-focus">
								      </div>
								      <div class="input-button">
								        <button class="button">답변작성완료</button>
								      </div>
								    </form>
								  </div>
								</div></td>
							</c:when>
							<c:otherwise>
								<td><button type="button" class="btn btn-info btn-sm" style="background-color :#fa3347; ">댓글작성완료</button>
								</td>
							</c:otherwise>
						</c:choose>
								<td>	
									<a href="#" class="btn btn-info btn-sm b2" id="b2">수정</a><div class="modal-overlay">
								  <div class="modal-wrapper">
								    <label class="close" for=""></label>
								    <h2 id="modal-title">리뷰후기답변작성</h2>
								    <form class="message-form" action="" onsubmit="return false;">
								      <img src="${pageContext.request.contextPath}/resources/img/goods/${vo.rb_saveimg}" width="200px;">
								      <div class="input-box">
								        <label for="" class="input-text"><i>[상품정보]:</i> <i>${vo.g_name}</i>  <i>/</i> <i>${vo.c_colorname}</i> <i>/</i> <i>${vo.sz_sizename}</i></label>
								        <hr class="underline">
								        <hr class="underline-focus">
								      </div>
								      
								      <div class="input-box">
								        <label for="" class="input-label" style=" top:-1px;" >[회원아이디]:${vo.m_id}</label>
								        <input type="text" class="input-text" readonly="readonly" value="[리뷰글]: ${vo.rb_content }" style="left:100px; bottom: 5px;">
								        <hr class="underline">
								        <hr class="underline-focus">
								      </div>
								      <div class="input-box textarea">
								        <label for="" class="input-label" style="color: aqua;" style=" top:-1px;">[답변작성란]:</label>
								        <textarea class="input-text" style="left:100px; bottom: 5px;"> ${vo.rp_content}</textarea>
								        <span style="display: none;">${vo.rp_num }</span>
								        <hr class="underline">
								        <hr class="underline-focus">
								      </div>
								      <div class="input-button">
								        <button class="bt">수정하기</button>
								      </div>
								    </form>
								  </div>
								</div>
								<button type="button" class="btn btn-info btn-sm b3" id="b3" style="background-color :#fa3347;  ">회원리뷰삭제</button>
								 <span style="display: none;">${vo.rp_num }</span>
								<button type="button" class="btn btn-info btn-sm b4" id="b4" style="background-color :#fa3347; ">삭제</button>
								</td>
					
					</tr>
				</c:forEach>
				</tbody>
			</table>
				
		</div>
	</div>
</div>
<div class="show replyComments"></div>


</section>

<!-- end of table section -->


	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script
	src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js' integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    <!-- script.js -->
	<script src='${pageContext.request.contextPath}/resources/admin/js/script.js'></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>

	
	
	$(document).on('click','.btn.btn-info.btn-sm', function(e) {
		  e.preventDefault();
		  $(this).addClass('active');
		//  var rb_num= $(this).parent().prev().prev().prev().prev().prev().prev().text();
		 // 	console.log(rb_num);
		  var popups = $(this).next().prop("tagName");
		  console.log(popups);		  
				  
				});					
								
								
	$('.modal-wrapper').find('label').on('click', function() {
		  $('.btn.btn-info.btn-sm').removeClass('active');
		});

		$('.input-text').focus(function() {
		  $(this).parents('.input-box').addClass('focus');
		})

		$('.input-text').blur(function() {
		  if ($(this).val()) {
		    $(this).parents('.input-box').addClass('focus');
		  } else {
		    $(this).parents('.input-box').removeClass('focus');
		  }
		  				
		  	
		  
		  
	});

	
	
		$(document).on('click','.button', function() {
			
			
			var rb_num= $(this).parent().parent().parent().parent().parent().prev().prev().prev().prev().prev().prev().text();
			console.log(rb_num+"rb_num넘어왔다");
			var rp_content= $(this).parent().prev().children().eq(1).val();
			console.log(rp_content+"rp_content넘어왔다");
	
			$.ajax({
	  		url: "${pageContext.request.contextPath}/shop/reviewReplys",
			data: {"rb_num":rb_num,"rp_content":rp_content},
			dataType: "json",
			success: function(data) {
						if(data.result=='success'){	
							alert("success")
					
				}
			}			
		});
		location.reload();
		});
	
		
		
		
		$(document).on('click','#b2', function(e) {
			e.preventDefault();
			  $(this).addClass('active');
						
				
			});
		
			
			
			
		$(document).on('click','.bt', function() {

		var rb_num= $(this).parent().parent().parent().parent().parent().prev().prev().prev().prev().prev().prev().prev().html();
		console.log(rb_num+"rb_num넘어왔다ddddddddddddddddddddddddddddddd");
		var rp_content =$(this).parent().prev().children().eq(1).val();
		var rp_num =$(this).parent().prev().children().eq(2).text();
		console.log(rp_content+"rp_content넘어옴//////////////");
		console.log(rp_num+"rp_num넘어옴@@@@@@@@@@@@@@@");
			$.ajax({
	  		url: "${pageContext.request.contextPath}/shop/reviewReplyUpdate",
			data: {"rp_num":rp_num,"rb_num":rb_num,"rp_content":rp_content},
			dataType: "json",
			success: function(data) {
						if(data.result=='success'){	
							alert("success")
					
				}
			}			
		});
			location.reload();
		});
		
		
		$(document).on('click','#b3', function() {
			var rb_num= $(this).parent().prev().prev().prev().prev().prev().prev().prev().text();
			console.log(rb_num+"rb_num넘어옴!!!!!!!!!!!******")
			
			var checking = confirm("회원리뷰를 삭제하시겠습니까?");
							if (checking == true) {
			
							
			
			
			$.ajax({
			
				url: "${pageContext.request.contextPath}/shop/reviewBoardDelete",
				data: {"rb_num":rb_num},
				dataType: "json",
				success: function(data) {
							if(data.result=='success'){	
								alert("회원리뷰 삭제성공")
						
					}
				}			
			});
							} else if (checking == false){
								alert("회원 리뷰삭제 취소완료");
							}
								
							
							location.reload();
			
		});
		
		
		
		$(document).on('click','#b4', function() {
			var rp_num= $(this).prev().text();
			console.log(rp_num+"rp_num넘어옴&&&&&&&&&&&&&&&&&")
			
			var checking = confirm("작성한 리뷰답글을 삭제하시겠습니까?");
							if (checking == true) {
		
			$.ajax({
			
				url: "${pageContext.request.contextPath}/shop/reviewReplyDelete",
				data: {"rp_num":rp_num},
				dataType: "json",
				success: function(data) {
							if(data.result=='success'){	
								alert("리뷰답글 삭제성공")
					}
				}			
			});
		
							}else if(checking == false){
								alert("리뷰답글 삭제취소");
								
							}
					
							location.reload();			

		});
	
		
	</script>

		
		
	
</body>
</html>