<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/popup.css"> 
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
			<span id=page style=display:none;>${pageNum}</span>
			
				<h3>주문/배송 관리</h3>
				<div class="table-search">
					<form action="" method="post">
						<div class="row">
							<select name="field" id="delinfo" class="form-control col-sm-2 p-2" aria-label=".form-select-sm example">
								<option value="0">상품준비중</option>
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
				<table class="table bg-light text-center" id="newproccess">
					<thead>
						<tr class="text-muted">
							<th><input type="checkbox" id="checkAll" value="all"></th>
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
							<td><input type="checkbox" name="chk" id="chk" value="${vo.o_num}" ></td>
							<td>${vo.o_num}</td>
							<td>${vo.m_id}</td>
							<td>${vo.m_name}</td>
							<td>${vo.p_totalprice}원</td>
							<td>${vo.p_methods}</td>
							<td>${vo.p_date}</td>
							<td>
								<div class="button" style="
						    position: relative;
					    top: 10px;
					    left: 35px;
					    width: 75px;
					    
					">
						  <span style="
							    color: white;
						  ">view</span>
						</div>
							<!-- <a href="#"><span class="badge badge-success mb-2 w-75 py-2" style="
							    color: #f8f9fa;
							    background-color: black;
							    position: relative;
							">상세보기</span></a> -->
							
							</td>
							<td>${vo.o_proccess}</td>
						</tr>
						
					</c:forEach>
					
					</tbody>
					<!-- end of forEach -->
					
			</table>
			
						
					<div id="pagelist" style="position: relative;left: 900px;"><!-- 페이징 처리 -->
						<c:if test="${pu.startPageNum>10 }">
							<a href="${pageContext.request.contextPath}/admin/order_list?pageNum=${pu.startPageNum-1 }">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
							<c:choose>
								<c:when test="${i==pu.pageNum }">
									<a href="${pageContext.request.contextPath}/admin/order_list?pageNum=${i}">
									<span id="${i}" style="color:black">[${i }]</span></a>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/admin/order_list?pageNum=${i}">
									<span id="${i}" style="color:gray" >[${i }]</span></a>
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
<div id="content" class="content">
<div id="wrep" style="
    height: auto;
    background: lightgray;
    position: relative;
    width: 1110px;
    LEFT: 500PX;
    top: 300px;
">
<div id="ordergoods">
<p>상품 정보</p>
</div>
</div>
</div>
<button id="close" class="close">
						  <div class="line"></div>
						  <div class="line"></div>

</button>

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
	
	  $(document).on('click','.button', function() {
		  console.log("button");
		  
		 var o_num = $(this).parent().prev().prev().prev().prev().prev().prev().html();
		 console.log(o_num);
		 
		 $.ajax({
			
		url:"${pageContext.request.contextPath}/shop/viewgoods",
		data:{"o_num":o_num},
		dataType:"json",
		success:function(data){
			console.log("asdasd");
			$("#ordergoods").empty(); 
			
			 var html = `
				 <h1 style="
					    position: relative;
				    left: 430px;
				    top: 10px;
						"
				>  [ VIEW LIST ] </h1> 
				    <div class="d-flex jusitfy-content-between align-items-center pt-3 pb-2 border-bottom" id="chofpa" >
			
				 <table class="table" style="width: 1110px; text-align: center">
					<tr>
					<th>사진</th>
					<th>주문 번호</th>
					<th>이름</th>
					<th>사이즈</th>
					<th>컬러</th>
					<th>수량</th>
					<th>가격</th>				
					</tr>
			 
			    
			 `;
			$(data.basketlistgetalllist).each(function(i,d){
				
				let gcs_num = d.gcs_num;
				let g_num = d.g_num;
				let g_name = d.g_name;
				let bk_ea = d.bk_ea;
				let g_saveimg = d.g_saveimg;
				let sz_sizename = d.sz_sizename;
				let c_colorname = d.c_colorname;
				let bk_totalprice = d.bk_totalprice;
				let p_totalprice = d.p_totalprice;
				let p_usecoupon = d.p_usecoupon;
				let p_date = d.p_date;
				let d_recname = d.d_recname;
				let d_recphone = d.d_recphone;
				let d_recaddr = d.d_recaddr;
				let d_recdetailaddr = d.d_recdetailaddr;
				let o_num = d.o_num;
				
				 
				html+= `
					<tr>
				<td>
				<img src="${pageContext.request.contextPath}/resources/img/goods/`+ g_saveimg + `" width="80" height="80" 
					style="
				    	position: relative;
				    	top: 10px;
				">
				</td>
					<td style="
					    position: relative;
				   
				">`+o_num+`</td>
					<td style="
					    position: relative;
				   
				">`+g_name+`</td>
					<td style="
					    position: relative;
				    
				">`+sz_sizename+`</td>
					<td style="
					    position: relative;
				   
				">`+c_colorname+`</td>
					<td style="
					    position: relative;
				    
				">`+bk_ea+`개</td>
				
					<td style="
					    position: relative;
				    
				">`+bk_totalprice+`원</td>
					
					</tr>
					`
			})
			
			$(data.orderlistgoodallinfolist).each(function(i,d){
				let ol_num = d.ol_num;
				let gcs_num = d.gcs_num;
				let g_num = d.g_num;
				let g_name = d.g_name;
				let ol_ea = d.ol_ea;
				let g_saveimg = d.g_saveimg;
				let sz_sizename = d.sz_sizename;
				let c_colorname = d.c_colorname;
				let ol_totalprice = d.ol_totalprice;
				let p_totalprice = d.p_totalprice;
				let p_usecoupon = d.p_usecoupon;
				let p_date = d.p_date;
				let d_recname = d.d_recname;
				let d_recphone = d.d_recphone;
				let d_recaddr = d.d_recaddr;
				let d_recdetailaddr = d.d_recdetailaddr;
				let o_num = d.o_num;
				
				 
				html+= `
					<tr>
				<td>
				<img src="${pageContext.request.contextPath}/resources/img/goods/`+ g_saveimg + `" width="80" height="80" 
					style="
				    	position: relative;
				    	top: 10px;
				">
				</td>
					<td style="
					    position: relative;
				   
				">`+o_num+`</td>
					<td style="
					    position: relative;
				   
				">`+g_name+`</td>
					<td style="
					    position: relative;
				   
				">`+sz_sizename+`</td>
					<td style="
					    position: relative;
				    
				">`+c_colorname+`</td>
					<td style="
					    position: relative;
				    
				">`+ol_ea+`개</td>
				
					<td style="
					    position: relative;
				    
				">`+ol_totalprice+`원</td>
					
					</tr>
					`
			})
				
			$("#ordergoods").append(html+"</table></div>"); 
			
			    $(this).toggleClass('active');
			    $('.content').toggleClass('show');	
				$('.close').toggleClass('open');
				
			}				 
		 });
	 
	  });
	  
	  $(document).on('click','.close', function() {
		  console.log("close");
	    $(this).toggleClass('open');
	 	$('.button').removeClass('active');
	    $('.content').removeClass('show');
	  });
	$(document).on('click','#delinfochange',function(){
		
		var o_numArr=[]; 
		var pageNum = $(".col-12 #page").html();
		console.log("pageNum" + pageNum);
		var delinfo = $("#delinfo").val();
		console.log(delinfo );
		$("input[name=chk]:checked").each(function(){
			
			o_numArr.push($(this).val());
		});

		for(let i=0; i<o_numArr.length ;i++){
			console.log(o_numArr[i]);
		}
		
		$.ajax({
			url:"${pageContext.request.contextPath}/shop/delinfochange",
			data:{"delinfo":delinfo ,"o_numArr":o_numArr ,"pageNum":pageNum},
			dataType:"json",
			success:function(data){
				var startRowNum =data.startRowNum; 
				var endRowNum =data.endRowNum; 
				var paymamberpagelist =data.paymamberpagelist; 
				var pu =data.pu; 
				var paygetcount =data.paygetcount; 
				console.log(startRowNum);
				$("#newproccess").empty(); 
				 $("#pagelist").empty(); 
				
				var html = `

						
						<!-- table -->
						
							<thead>
								<tr class="text-muted">
									<th><input type="checkbox" id="checkAll" value="all"></th>
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
							`;
						
							$(paymamberpagelist).each(function(i,d){
								
								
								let o_num = d.o_num;
								let m_id = d.m_id;
								let m_name = d.m_name;
								let p_totalprice = d.p_totalprice;
								let p_methods = d.p_methods;
								let p_date = d.p_date;
								let o_proccess = d.o_proccess;
								
							html+=`	
								<tr>
									<td><input type="checkbox" name="chk" id="chk" value="`+o_num+`" ></td>
									<td>`+o_num+`</td>
									<td>`+m_id+`</td>
									<td>`+m_name+`</td>
									<td>`+p_totalprice+`원</td>
									<td>`+p_methods+`</td>
									<td>`+p_date+`</td>
									<td><a href="#"><span class="badge badge-success mb-2 w-75 py-2" style="
									    color: #f8f9fa;
									    background-color: black;
									    position: relative;
									">상세보기</span></a></td>
									<td>`+o_proccess+`</td>
								</tr>
								
							`;
						
							});
					$("#newproccess").append(html+"</tbody>"); 
					
					var startRowNum =data.startRowNum; 
					var endRowNum =data.endRowNum; 
					var pu =data.pu; 
					var paygetcount =data.paygetcount; 
					
					let startPageNum = data.pu.startPageNum;
					let endPageNum= data.pu.endPageNum;
					let startRow = data.pu.startRow;
					let endRow = data.pu.endRow;
					let pageNum = data.pu.pageNum;
					
					let str="";
					
					if(startPageNum>5){
						
						str +="<a href=${pageContext.request.contextPath}/admin/order_list?pageNum="+startPageNum-1+">이전</a>";
					}
					for(let i=startPageNum;i<=endPageNum;i++){
						if(pageNum==i){
							str = str +"<a href = ${pageContext.request.contextPath}/admin/order_list?pageNum="+i+" >" +"<span  style='color:black'> ["+ i +"] </span>"+"</a>";
						}else{
							str = str +"<a href = ${pageContext.request.contextPath}/admin/order_list?pageNum="+i+" >" +"<span style='color:gray'> ["+ i +"] </span>"+"</a>";
							
						}
					}
					if(endPageNum<data.pu.totalPageCount){
						
						str +="<a href=${pageContext.request.contextPath}/admin/order_list?pageNum="+endPageNum+1+"onclick='mycolor()'>다음</a>";
					}
					$("#pagelist").append(str);
					
					

					
					
			}
			
		});
		
	});
</script>
</body>
</html>