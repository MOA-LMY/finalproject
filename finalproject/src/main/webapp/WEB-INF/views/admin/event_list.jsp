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
<style>
.table tbody tr td {
	height: 50px;
	vertical-align: middle;
}
</style>
<script type="text/javascript">

function search(){
	
	var field = $("#field").val(); 
	var keyword = $("#keyword").val(); 
	var e_startdate = $("input[name=e_startdate]").val(); 
	var e_enddate = $("input[name=e_enddate]").val(); 
	alert(field +" / "+ keyword +" / "+e_startdate +" / "+e_enddate);
	var tablecontext = $(".table.bg-light.text-center tbody").empty(); 
	
	$.ajax({ 
		
		url:"${pageContext.request.contextPath}/admin/event_search",
		data:{"field":field,"keyword":keyword,"e_startdate":e_startdate,"e_enddate":e_enddate},
		dataType:"json",
		success:function(data){
			
			
			$(data.event_searchlist).each(function(i,d){
				let e_code = d.e_code;
				let e_name = d.e_name;
				let e_content = d.e_content;
				let e_point = d.e_point;
				let e_discount = d.e_discount;
				let e_startdate = d.e_startdate;
				let e_enddate = d.e_enddate;
				let e_orgimg = d.e_orgimg;
				let e_saveimg = d.e_saveimg;
				
				var html  = 
					`
					<tr>
				
							<td>`+e_code+`</td>
							<td>`+e_name+`</td>
							<td>`+e_point+` Point</td>
							<td>`+e_discount+` %</td>
							<td>`+e_startdate+`</td>
							<td>`+e_enddate+`</td>
							<td>
								<a href="${pageContext.request.contextPath}/admin/event_detail?e_code=`+e_code+`">
									<span class="badge badge-success mb-2 w-75 py-2" style="
									    background: black;
									" >View</span>
								</a><br>
								<a href="${pageContext.request.contextPath}/admin/event_update?e_code=`+e_code+`">
									<span class="badge badge-secondary mb-2 w-75 py-2">Update</span>
								</a><br>
								<a href="${pageContext.request.contextPath}/admin/event_delete?e_code=`+e_code+`">
									<span class="badge badge-secondary mb-2 w-75 py-2">Delete</span>
								</a>
							</td>
						</tr>
					`;
				$(".table.bg-light.text-center tbody").append(html); 
			})
			
		}
		
	});
}

</script>
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
		
			<!-- search -->
			<div class="col-12">
				<h3>이벤트 관리</h3>
				<div class="table-search">
					<form action="" method="post">
						
						<div class="row">
							<!-- 검색 라인 -->
							<select name="field" id="field" class="form-control col-sm-2 p-2" aria-label=".form-select-sm example">
								<option value="e_code">이벤트코드</option>
								<option value="e_name">이벤트명</option>
							</select>
							
							<span> &nbsp; </span>
							<input type="text" class="form-control col-sm-2 p-2" name="keyword" id="keyword">
							<span> &nbsp; </span>
							<input type="date" class="form-control col-sm-2 p-2" name="e_startdate">
							<span> &nbsp; ~ &nbsp;  </span>
							<input type="date" class="form-control col-sm-2 p-2" name="e_enddate">
							<span> &nbsp;&nbsp;&nbsp; </span>
							<button type="button" class="btn btn-outline-secondary col-sm-1 w-1" onclick="search()">검색</button>
							<!-- 이벤트 등록 버튼 -->
							<button type="button" class="btn btn-outline-dark ml-md-auto" onclick="location.href='${pageContext.request.contextPath}/admin/event_insert'">이벤트등록</button>
						
						</div>
					</form>
				</div>
			</div>
				
				<!-- table -->
				<table class="table bg-light text-center">
					<thead>
						<tr class="text-muted">
							<th>이벤트코드</th>
							<th>이벤트명</th>
							<th>적립포인트</th>
							<th>할인율</th>
							<th>시작일</th>
							<th>종료일</th>
							<th>관리</th>
						</tr>
					</thead>
					
					<tbody>
					<c:forEach var="vo" items="${list}">
						<tr>
							<td>${vo.e_code }</td>
							<td>${vo.e_name }</td>
							<td>${vo.e_point } Point</td>
							<td>${vo.e_discount } %</td>
							<td>${vo.e_startdate }</td>
							<td>${vo.e_enddate }</td>
							<td>
								<a href="${pageContext.request.contextPath}/admin/event_detail?e_code=${vo.e_code}">
									<span class="badge badge-success mb-2 w-75 py-2" style="
											    background: black;
											">View</span>
								</a><br>
								<a href="${pageContext.request.contextPath}/admin/event_update?e_code=${vo.e_code}">
									<span class="badge badge-secondary mb-2 w-75 py-2">Update</span>
								</a><br>
								<a href="${pageContext.request.contextPath}/admin/event_delete?e_code=${vo.e_code}">
									<span class="badge badge-secondary mb-2 w-75 py-2">Delete</span>
								</a>
							</td>
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
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
</body>
</html>