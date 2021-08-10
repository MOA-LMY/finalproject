<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<td>${rb.date }</td>
						<c:choose>
							<c:when test="">
								<td><button type="button" class="btn btn-secondary btn-sm">댓글작성하기</button></td>
							</c:when>
							<c:otherwise>
								<td><button type="button" class="btn btn-info btn-sm">댓글작성완료</button></td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
				</tbody>
			</table>
				
		</div>
	</div>
</div>
</section>
<!-- end of table section -->


	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js' integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
    <!-- script.js -->
	<script src='${pageContext.request.contextPath}/resources/admin/js/script.js'></script>
</body>
</html>