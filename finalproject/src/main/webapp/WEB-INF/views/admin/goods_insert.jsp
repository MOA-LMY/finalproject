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
				
	<!-- 상품등록 -->
	<div class="col-xl-6 col-12 mb-xl-0">
		<div class="input-form">
		<h4 class="mb-3 setting-font">상품 등록</h4>
		<form class="validation-form" novalidate>
			<!-- 카테고리 -->
			<div class="category">
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="">상품 카테고리</label>
						<select name="" class="form-control" aria-label=".form-select-sm example" >
						  <option selected>카테고리(대)</option>
						  <option value="">분류1</option>
						  <option value="">분류2</option>
						</select>
					</div>
					<div class="col-md-6 mb-3">
						<label for="">　</label>
						<select name="" class="form-control" aria-label=".form-select-sm example" >
						  <option selected>카테고리(소)</option>
						  <option value="">분류1</option>
						  <option value="">분류2</option>
						  <option value="">분류3</option>
						</select>
					</div>
				</div>
			</div>
			<!-- 입력란 -->
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="">상품명</label>
					<input type="text" class="form-control" id="" placeholder="" value="" required>
					<div class="invalid-feedback"> 상품명을 입력해주세요. </div>
				</div>
				<div class="col-md-6 mb-3">
					<label for="">상품 가격</label>
					<input type="text" class="form-control" id="" placeholder="" value="" required>
					<div class="invalid-feedback"> 상품 가격을 입력해주세요. </div>
				</div>
			</div>
			<div class="mb-3">
				<label for="">상품 내용</label>
				<textarea rows="4" cols="300" class="form-control" id="" placeholder="" required></textarea>
				<div class="invalid-feedback"> 내용을 입력해주세요. </div>
			</div>
			<div class="mb-3">
				<label for="">상품 이미지 첨부</label>
				<div class="custom-file">
					<input type="file" class="custom-file-input" id="g_orgimg" required>
					<label class="custom-file-label" for="g_orgimg">파일 선택</label>
					<div class="invalid-feedback"> 상품 이미지를 선택해주세요. </div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="">입고 날짜 -> datepicker미완성</label>
					<input type="text" id="datePicker" class="form-control" value="2021-08-01">
					<div class="invalid-feedback"> 입고 날짜를 입력해주세요. </div>
				</div>
				<div class="col-md-6 mb-3">
					<label for="">입고 수량</label>
					<input type="text" class="form-control" id="" palceholder="" required>
					<div class="invalid-feedback"> 입고 수량을 입력해주세요. </div>
				</div>
			</div>
			<div class="mb-3">
				<label for="">상품 정보</label>
				<input type="text" class="form-control" id="" palceholder="" required>
				<div class="invalid-feedback"> 상품 정보를 입력해주세요. </div>
			</div>
			<!-- 버튼 -->
			<div class="mb-4"></div>
			<div class="row">
				<div class="input-form-button col-md-6 mb-3">
					<button class="btn btn-primary btn-lg btn-block" type="submit">상품 등록</button>
				</div>
				<div class="input-form-button col-md-6 mb-3">
					<button class="btn btn-secondary btn-lg btn-block" onclick="" type="button">취소</button>
				</div>
			</div>
		</form>
		</div>
	</div>
	
	<!-- 상품 이미지 미리보기 -->
	<div class="col-xl-6 col-12">
		<div class="input-form">
			<h4 class="mb-3 setting-font">상품 이미지</h4>
			<div class="input-form-wrap" style="overflow:hidden;">
				<img id="input-form-image" />
			</div>
		</div>
	</div>
				
</div>
</div>
</div>
</div>
</section>


	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
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
		$("#g_orgimg").on("change", handleImgFileSelect);
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
	
	$('#g_orgimg').on('change',function(){
		var fileName = $(this).val();
		$(this).next('.custom-file-label').html(fileName);
	});
</script>
</body>
</html>