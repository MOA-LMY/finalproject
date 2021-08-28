<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
.table tbody tr td {
	vertical-align: middle;
}
</style>	
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
	<div class="row">
		<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
		
			<!-- process -->
			<div class="col-12">
				<h3>주문/배송 관리</h3>
				<div class="table-search">
					<form action="" method="post">
						<div class="row">
							<select name="field" id="delinfo" class="form-control col-sm-2 p-2" aria-label=".form-select-sm example">
								<option value="1">배송준비중</option>
								<option value="2">배송중</option>
								<option value="3">배송완료</option>
							</select>
							<input id="delinfochange" type="button" class="form-control col-sm-1 p-2" value="변경">
						</div>
					</form>
				</div>
			</div>
				
				<!-- table -->
				<table class="table bg-light text-center">
					<thead>
						<tr class="text-muted">
							<th><input type="checkbox" id="checkAll"></th>
							<th>주문번호</th>
							<th>아이디</th>
							<th>주문자명</th>
							<th>결제금액</th>
							<th>결제수단</th>
							<th>주문일자</th>
							<th>상세조회</th>
							<th>진행상황</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="vo" items="${paymamberpagelist}">
					
						<tr>
							<td><input type="checkbox" name="chk" id="${vo.o_num}"></td>
							<td>${vo.o_num}</td>
							<td>${vo.m_id}</td>
							<td>${vo.m_name}</td>
							<td>${vo.p_totalprice}원</td>
							<td>${vo.p_methods}</td>
							<td>${vo.p_date}</td>
							<td><a href="#"><span class="badge badge-success mb-2 w-75 py-2" style="
							    color: #f8f9fa;
							    background-color: black;
							    position: relative;
							">상세보기</span></a></td>
							<td>${vo.o_proccess}</td>
						</tr>
						
					</c:forEach>
					
					</tbody>
					<!-- end of forEach -->
					
			</table>
			
						
					<div style="position: relative;left: 900px;"><!-- 페이징 처리 -->
						<c:if test="${pu.startPageNum>10 }">
							<a href="${pageContext.request.contextPath}/admin/order_list?pageNum=${pu.startPageNum-1 }">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
							<c:choose>
								<c:when test="${i==pu.pageNum }">
									<a href="${pageContext.request.contextPath}/admin/order_list?pageNum=${i}">
									<span style="color:black">[${i }]</span></a>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/admin/order_list?pageNum=${i}">
									<span style="color:gray">[${i }]</span></a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${pu.pageBlockCount < pu.endPageNum }">
							<a href="${pageContext.request.contextPath}/admin/order_list?pageNum=${pu.endPageNum+1}">[다음]</a>
						</c:if>
					</div>
					
					
					
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
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/js/jquery-3.6.0.min.js"></script>
	
<script type="text/javascript">
	$(document).ready(function() {
		$("#checkAll").click(function() {
			if ($("#checkAll").prop("checked")) {
				$("input[name=chk]").prop("checked",true);
			}else {
				$("input[name=chk]").prop("checked",false);
			}
		});
	});
	
	
	$(document).on('click','#delinfochange',function(){
		var delinfo = $("#delinfo").val();
		var checkall =$("#checkAll").val(); 
		alert(delinfo + checkall );
	});
</script>
</body>
</html>