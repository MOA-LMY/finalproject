<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
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
<style>
body { 
	min-height: 100vh; 
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c)); 
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%); 
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%); }
</style>
</head>
<body>
	<!-- sidebar -->
  	<jsp:include page="sidebar.jsp"/>


<!-- blank section -->
<section>
	<div class="blank-section"></div>
</section>


<!-- input section -->
<section>
<div class="container-fluid setting-font">
<div class="row mb-5">
<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
<div class="row">
				
	<!-- 이벤트 수정 -->
	<div class="col-xl-6 col-12 mb-xl-0">
		<div class="input-form">
		<h4 class="mb-3 setting-font">이벤트 수정</h4>
		<form method="post" action="${pageContext.request.contextPath }/admin/event_update" enctype="multipart/form-data" class="validation-form" novalidate>
			<!-- 입력란 -->
			<div class="row">
				<div class="col-md-4 mb-3">
					<label for="">이벤트코드</label>
					<input type="text" class="form-control" name="e_code" id="e_code" value="${vo.e_code }" readonly="readonly" required>
					<div class="invalid-feedback"> 이벤트코드를 입력해주세요. </div>
				</div>
				<div class="col-md-8 mb-3">
					<label for="">이벤트명</label>
					<input type="text" class="form-control" name="e_name" id="e_name" value="${vo.e_name }" required>
					<div class="invalid-feedback"> 이벤트명을 입력해주세요. </div>
				</div>
			</div>
			<div class="mb-3">
				<label for="">이벤트 내용</label>
				<textarea rows="8" cols="500" class="form-control" name="e_content" id="e_content" required>${vo.e_content }</textarea>
				<div class="invalid-feedback"> 내용을 입력해주세요. </div>
			</div>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="">적립금액</label>
					<input type="text" class="form-control" name="e_point" id="e_point" value="${vo.e_point }" required>
					<div class="invalid-feedback"> 적립금액을 입력해주세요. </div>
				</div>
				<div class="col-md-6 mb-3">
					<label for="">할인율</label>
					<input type="text" class="form-control" name="e_discount" id="e_discount" value="${vo.e_discount }" required>
					<div class="invalid-feedback"> 할인율을 입력해주세요. </div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="">이벤트 시작일</label>
					<input type="date" class="form-control" name="e_startdate" value="${vo.e_startdate }" required>
					<div class="invalid-feedback"> 시작일을 선택해주세요. </div>
				</div>
				<div class="col-md-6 mb-3">
					<label for="">이벤트 종료일</label>
					<input type="date" class="form-control" name="e_enddate" value="${vo.e_enddate }" required>
					<div class="invalid-feedback"> 종료일을 선택해주세요. </div>
				</div>
			</div>
			<div class="mb-3">
				<label for="">수정할 파일</label>
				<div class="custom-file">
					<input type="file" class="custom-file-input" name="file1" id="e_orgimg">
					<label class="custom-file-label" for="e_orgimg">${vo.e_orgimg }</label>
					<div class="invalid-feedback"> 이미지를 선택해주세요. </div>
				</div>
			</div>
			<!-- 버튼 -->
			<div class="mb-4"></div>
			<div class="row">
				<div class="input-form-button col-md-6 mb-3">
					<button class="btn btn-primary btn-lg btn-block" type="submit">등록</button>
				</div>
				<div class="input-form-button col-md-6 mb-3">
					<button class="btn btn-secondary btn-lg btn-block" data-toggle="modal" data-target="#cancel" type="button">취소</button>
				</div>
			</div>
		</form>
		</div>
	</div>
	
	<!-- 이미지 미리보기 -->
	<div class="col-xl-6 col-12">
		<div class="input-form">
			<h4 class="mb-3 setting-font">이미지 미리보기</h4>
			<div class="input-form-wrap" style="overflow:hidden;">
				<img id="input-form-image" style="max-width:100%; width:610px; height:auto;" />
			</div>
		</div>
	</div>
				
</div>
</div>
</div>
</div>
</section>

	<!-- modal -->
    <div class="modal fade" id="cancel">
    	<div class="modal-dialog">
    		<div class="modal-content">
    			<div class="modal-header">
    				<h4 class="modal-title">이벤트 등록 취소</h4>
    				<button type="button" class="close" data-dismiss="modal">&times;</button>
    			</div>
    			<div class="modal-body">
    				작성을 취소 하시겠습니까?
    			</div>
    			<div class="modal-footer">
    				<button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/admin/event_list;'" data-dismiss="modal">Yes</button>
    				<button type="button" class="btn btn-secondary" onclick="return false;" data-dismiss="modal">No</button>
    			</div>
    		</div>
    	</div>
    </div>
    <!-- end of modal -->


	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js' integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    <!-- script.js -->
	<script src='${pageContext.request.contextPath}/resources/admin/js/script.js'></script>
	<!-- file 관련 -->
	<script src="https://cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.min.js"></script>

<script type="text/javascript">
	window.addEventListener('load', () => {
		const forms = document.getElementsByClassName('validation-form');
		Array.prototype.filter.call(forms, (form) => {
			form.addEventListener('submit',function(evert){
				if(form.checkValidity() === false) {
					event.preventDefault();
					event.stopPropagation();
				}
				form.classList.add('was-validated');
			}, false);
		});
	}, false);
	
	var sel_file;
	$(document).ready(function(){
		$("#e_orgimg").on("change", handleImgFileSelect);
	});
	function handleImgFileSelect(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#input-form-image").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
	$('#e_orgimg').on('change',function(){
		var fileName = $(this).val();
		$(this).next('.custom-file-label').html(fileName);
	});
</script>
</body>
</html>