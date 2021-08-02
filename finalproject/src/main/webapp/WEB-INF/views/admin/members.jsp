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


<!-- table section -->
<section>
<div class="container-fluid setting-font">
	<div class="row mb-5">
		<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
		
			<!-- search -->
			<div class="col-12">
				<h3>일반회원 관리</h3>
				<div class="table-search">
					<form action="" method="post">
						<div class="row">
							<select name="field" id="field" class="form-control col-sm-2 p-2" aria-label=".form-select-sm example">
								<option value="">회원아이디</option>
								<option value="">회원이름</option>
								<option value="">전화번호</option>
								<option value="">회원이메일</option>
							</select>
							<input type="text" class="form-control col-sm-3 p-2" name="keyword" id="keyword">
							<input type="submit" class="form-control btn-secondary col-sm-1 p-2" value="검색">
						</div>
					</form>
				</div>
			</div>
			
			<!-- table -->
			<table class="table text-center table-hover">
				<thead>
					<tr class="table-active">
						<th>아이디</th>
						<th>회원이름</th>
						<th>전화번호</th>
						<th>회원이메일</th>
						<th>회원주소</th>
						<th>회원생년월일</th>
						<th>관리</th>
					</tr>
				</thead>
				
				<!-- forEach -->
				<tbody>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-secondary btn-sm">비활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
					<tr class="table-light">
						<td>dlwlrma</td>
						<td>이지은</td>
						<td>010-1234-1234</td>
						<td>dlwlrma@aopsz.com</td>
						<td>서울시 용산구</td>
						<td>1993.05.16</td>
						<td><button type="button" class="btn btn-success btn-sm">활성화</button></td>
					</tr>
				</tbody>
				<!-- end of forEach -->
			</table>
		</div>
	</div>
</div>
</section>


	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js' integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    <!-- script.js -->
	<script src='${pageContext.request.contextPath}/resources/admin/js/script.js'></script>
</body>
</html>