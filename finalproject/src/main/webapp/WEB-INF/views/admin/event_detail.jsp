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


<!-- detail section -->
<section>
<div class="container-fluid setting-font">
	<div class="row">
		<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
			<h3>이벤트 상세보기</h3>
			<div class="mb-4"></div>
				<button type="button" class="btn btn-outline-secondary col-sm-1 w-1" onclick="location.href='${pageContext.request.contextPath}/admin/event_list'">목록</button>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='${pageContext.request.contextPath}/admin/event_update?e_code=${vo.e_code }'">수정</button>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='${pageContext.request.contextPath}/admin/event_delete?e_code=${vo.e_code }'">삭제</button>
			<div class="mb-1"></div>
			
			<table class="table bg-light col-md-6">
				<colgroup>
					<col width="20%">
					<col width="30%">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">이벤트코드</th>
						<td>${vo.e_code }</td>
						<th scope="row">이벤트명</th>
						<td>${vo.e_name }</td>
					</tr>
					<tr style="height:320px;">
						<th>이벤트내용</th>
						<td>${vo.e_content }</td>
					</tr>
					<tr>
						<th scope="row">적립포인트</th>
						<td>${vo.e_point }</td>
						<th scope="row">할인율</th>
						<td>${vo.e_discount }</td>
					</tr>
					<tr>
						<th>시작일</th>
						<td>${vo.e_startdate }</td>
						<th>종료일</th>
						<td>${vo.e_enddate }</td>
					</tr>
				</tbody>
			</table>
			
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
</body>
</html>