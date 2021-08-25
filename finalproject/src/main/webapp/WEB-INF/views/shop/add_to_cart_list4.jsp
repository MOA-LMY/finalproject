<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_add_to_cart_list/add_to_cart_list.css">

<!-- header,footer css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/gijgo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/style.css">


</head>
<body>
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet">
	<header>
		<div class="header-area ">
			<div class="header-top_area">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-8">
							<div class="short_contact_list">
								<ul>
									<li><a href="${pageContext.request.contextPath}/goodtest">버튼1</a>
									</li>
									<li><a
										href="${pageContext.request.contextPath}/resources/#">버튼2</a>
									</li>
									<li><a
										href="${pageContext.request.contextPath}/lsh/adminmain">관리자
											테스트</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-6 col-md-4 ">
							<div class="social_media_links">
								<a href="${pageContext.request.contextPath}/resources/#"> <i
									class="fa"> 메인1 </i>

								</a> <a href="${pageContext.request.contextPath}/login/login"> <i
									class="fa"> 로그인 </i>
								</a> <a href="${pageContext.request.contextPath}/resources/#"> <i
									class="fa"> 장바구니 </i>

								</a> <a href="${pageContext.request.contextPath}/resources/#"> <i
									class="fa"> mypage </i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="sticky-header" class="main-header-area">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-3 col-lg-3">
							<div class="logo">
								<a href="${pageContext.request.contextPath}/"> <img
									src="${pageContext.request.contextPath}/resources/img/logo.png"
									alt="">
								</a>
							</div>
						</div>
						<div class="col-xl-9 col-lg-9">
							<div class="main-menu  d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="${pageContext.request.contextPath}/">홈</a></li>
										<li><a href="${pageContext.request.contextPath}/about">유기견</a></li>
										<li><a href="#">blog <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="${pageContext.request.contextPath}/blog">블로그</a></li>
												<li><a
													href="${pageContext.request.contextPath}/singleblog">서브블로그</a></li>
											</ul></li>
										<li><a href="#">pages <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a
													href="${pageContext.request.contextPath}/elements">elements</a></li>

											</ul></li>
										<li><a href="${pageContext.request.contextPath}/">서비스</a></li>
										<li><a href="${pageContext.request.contextPath}/contact">메세지</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</header>


	<div class="container padding-bottom-3x mb-1">
		<!-- Alert-->
		<div class="alert alert-info alert-dismissible fade show text-center"
			style="margin-bottom: 30px;">
			<span class="alert-close" data-dismiss="alert"></span><img
				class="d-inline align-center"
				src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MTIuMDAzIDUxMi4wMDMiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMi4wMDMgNTEyLjAwMzsiIHhtbDpzcGFjZT0icHJlc2VydmUiIHdpZHRoPSIxNnB4IiBoZWlnaHQ9IjE2cHgiPgo8Zz4KCTxnPgoJCTxnPgoJCQk8cGF0aCBkPSJNMjU2LjAwMSw2NGMtNzAuNTkyLDAtMTI4LDU3LjQwOC0xMjgsMTI4czU3LjQwOCwxMjgsMTI4LDEyOHMxMjgtNTcuNDA4LDEyOC0xMjhTMzI2LjU5Myw2NCwyNTYuMDAxLDY0eiAgICAgIE0yNTYuMDAxLDI5OC42NjdjLTU4LjgxNiwwLTEwNi42NjctNDcuODUxLTEwNi42NjctMTA2LjY2N1MxOTcuMTg1LDg1LjMzMywyNTYuMDAxLDg1LjMzM1MzNjIuNjY4LDEzMy4xODQsMzYyLjY2OCwxOTIgICAgIFMzMTQuODE3LDI5OC42NjcsMjU2LjAwMSwyOTguNjY3eiIgZmlsbD0iIzUwYzZlOSIvPgoJCQk8cGF0aCBkPSJNMzg1LjY0NCwzMzMuMjA1YzM4LjIyOS0zNS4xMzYsNjIuMzU3LTg1LjMzMyw2Mi4zNTctMTQxLjIwNWMwLTEwNS44NTYtODYuMTIzLTE5Mi0xOTItMTkycy0xOTIsODYuMTQ0LTE5MiwxOTIgICAgIGMwLDU1Ljg1MSwyNC4xMjgsMTA2LjA2OSw2Mi4zMzYsMTQxLjE4NEw2NC42ODQsNDk3LjZjLTEuNTM2LDQuMTE3LTAuNDA1LDguNzI1LDIuODM3LDExLjY2OSAgICAgYzIuMDI3LDEuNzkyLDQuNTY1LDIuNzMxLDcuMTQ3LDIuNzMxYzEuNjIxLDAsMy4yNDMtMC4zNjMsNC43NzktMS4xMDlsNzkuNzg3LTM5Ljg5M2w1OC44NTksMzkuMjMyICAgICBjMi42ODgsMS43OTIsNi4xMDEsMi4yNCw5LjE5NSwxLjI4YzMuMDkzLTEuMDAzLDUuNTY4LTMuMzQ5LDYuNjk5LTYuNGwyMy4yOTYtNjIuMTQ0bDIwLjU4Nyw2MS43MzkgICAgIGMxLjA2NywzLjE1NywzLjU0MSw1LjYzMiw2LjY3Nyw2LjcyYzMuMTM2LDEuMDY3LDYuNTkyLDAuNjQsOS4zNjUtMS4yMTZsNTguODU5LTM5LjIzMmw3OS43ODcsMzkuODkzICAgICBjMS41MzYsMC43NjgsMy4xNTcsMS4xMzEsNC43NzksMS4xMzFjMi41ODEsMCw1LjEyLTAuOTM5LDcuMTI1LTIuNzUyYzMuMjY0LTIuOTIzLDQuMzczLTcuNTUyLDIuODM3LTExLjY2OUwzODUuNjQ0LDMzMy4yMDV6ICAgICAgTTI0Ni4wMTcsNDEyLjI2N2wtMjcuMjg1LDcyLjc0N2wtNTIuODIxLTM1LjJjLTMuMi0yLjExMi03LjMxNy0yLjM4OS0xMC42ODgtMC42NjFMOTQuMTg4LDQ3OS42OGw0OS41NzktMTMyLjIyNCAgICAgYzI2Ljg1OSwxOS40MzUsNTguNzk1LDMyLjIxMyw5My41NDcsMzUuNjA1TDI0Ni43LDQxMS4yQzI0Ni40ODcsNDExLjU2MywyNDYuMTY3LDQxMS44NCwyNDYuMDE3LDQxMi4yNjd6IE0yNTYuMDAxLDM2Mi42NjcgICAgIEMxNjEuOSwzNjIuNjY3LDg1LjMzNSwyODYuMTAxLDg1LjMzNSwxOTJTMTYxLjksMjEuMzMzLDI1Ni4wMDEsMjEuMzMzUzQyNi42NjgsOTcuODk5LDQyNi42NjgsMTkyICAgICBTMzUwLjEwMywzNjIuNjY3LDI1Ni4wMDEsMzYyLjY2N3ogTTM1Ni43NTksNDQ5LjEzMWMtMy40MTMtMS43MjgtNy41MDktMS40NzItMTAuNjg4LDAuNjYxbC01Mi4zNzMsMzQuOTIzbC0zMy42NDMtMTAwLjkyOCAgICAgYzQwLjM0MS0wLjg1Myw3Ny41ODktMTQuMTg3LDEwOC4xNi0zNi4zMzFsNDkuNTc5LDEzMi4yMDNMMzU2Ljc1OSw0NDkuMTMxeiIgZmlsbD0iIzUwYzZlOSIvPgoJCTwvZz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K"
				width="18" height="18" alt="Medal icon">
			<h1>장바구니</h1>
			&nbsp;&nbsp;With this purchase you will earn <strong>290</strong>
			Reward Points.
		</div>
		<!-- Shopping Cart-->
		<div class="table-responsive shopping-cart">
			<table class="table">
				<thead>
					<tr>
						<th>Product Name</th>
						<th class="text-center">Quantity</th>
						<th class="text-center">Subtotal</th>
						<th class="text-center"><a
							class="btn btn-sm btn-outline-danger" href="#" id="DeleteAll">Clear
								Cart</a></th>
						<th class="text-center">order</th> 	
					</tr>
				
				</thead>
		
				<tbody>
					<tr id="tr">
					<td>
						
						<c:forEach var="cart" items="${cartlistall }" varStatus="i" >
		
							<c:if test="${cart.bs_num!=c.bs_num}">
								
							
								<c:if test="${i.index>0}">
									<td class="text-center text-lg text-medium" >${c.bk_totalprice}</td>
									<td class="text-center"><div class="deleteBss"><a class="remove-from-cart delete" href="#" style="pointer-events:none;"
								data-toggle="tooltip" title="" data-original-title="Remove item"><i
								class="fa fa-trash delete" style="pointer-events:none;"></i>
								
								<span id="bs_num" class="basketDelete"
								style="display: none;">${c.bs_num}</span></a></div></td>
										<td>		
									<div> 
								<button id="basketorder" >
									주문
								</button> 
								</div>
								</td>
								
								</c:if>
								</tr>
								<tr id="tr">
								<td>${c.bs_num },${cart.bs_num }
									<div class="product-item">
										<a class="product-thumb" href="#"><img
											src="${pageContext.request.contextPath}/resources/img/goods/${cart.g_saveimg}"
											alt="Product"></a>
										<div class="product-info">
											<h4 class="product-title">
												<a href="#">${cart.g_name}</a>
											</h4>
											<span id="eachprice2"> ${cart.g_price }</span>
										</div>
									</div>
		
								</td>
								<td class="text-center">
		
		
									<div class="count-input">
										<span><em>Size:</em>${cart.sz_sizename}</span><span><em>Color:</em>${cart.c_colorname }</span>
										<input type="number" id="gea" class="chGea" name="amount"
											value="${cart.bk_ea }" style="width: 100px;" min=1;> <input
											type="button" class="changeNum" value="수정">
										<div class="delete1"><a class="remove-from-cart" href="#"
										data-toggle="tooltip" title="" data-original-title="Remove item"><i
										class="fa fa-trash" ></i></a></div>
											 <span
											class="eachprice" style="display: none;"> ${cart.g_price }</span>
										<span id="eachprice2" style="display: none;">
											${cart.bs_num }</span>
											<span id="eachprice2" style="display: none;">
											${cart.bk_num }</span>
												
									</div> 
								
									</c:if> 
									
									
									<c:if test="${cart.bs_num==c.bs_num}">
		
		
										<div class="count-input">
											<span><em>Size:</em>${cart.sz_sizename}</span><span><em>Color:</em>${cart.c_colorname }</span>
											<input type="number" id="gea" class="chGea" name="amount"
												value="${cart.bk_ea }" style="width: 100px;" min=1;> <input
												type="button" class="changeNum" value="수정"> 
												<div class="delete1">	<a class="remove-from-cart" href="#"
										data-toggle="tooltip" title="" data-original-title="Remove item"><i
										class="fa fa-trash"></i></a></div>
												<span
												id="eachprice2" style="display: none;"> ${cart.g_price }</span>
											<span id="eachprice2" style="display: none;">
											${cart.bs_num }</span>
											<span id="eachprice2" style="display: none;">
											${cart.bk_num }</span>
	
										</div>

							</c:if>
						
							 <c:set var="c" value="${cart}" /> 
							</c:forEach>
						
					<td class="text-center text-lg text-medium" id="lastprice">${c.bk_totalprice }</td>
					<td class="text-center">
					<div class="deleteBs">
					<a class="remove-from-cart delete" href="#" style="pointer-events:none;"
								data-toggle="tooltip" title="" data-original-title="Remove item">
								<i
								class="fa fa-trash delete" style="pointer-events:none;"></i></a>
					</div>
						<span id="bs_num" style="display: none;"> ${c.bs_num }</span>
						
					
						</td>
						<td>		
						<div> 
					<button id="basketorder" >
						주문
					</button> 
					</div>
					</td>
				
					</tr>

					<!-- 
                <tr>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="#"><img src="https://via.placeholder.com/220x180/5F9EA0/000000" alt="Product"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="#">Daily Fabric Cap</a></h4><span><em>Size:</em> XL</span><span><em>Color:</em> Black</span>
                            </div>
                        </div>
                    </td>
                    <td class="text-center">
                        <div class="count-input">
                            <select class="form-control">
                                <option>1</option>
                                <option selected="">2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </td>
                    <td class="text-center text-lg text-medium">$24.89</td>
                    <td class="text-center">—</td>
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash"></i></a></td>
                </tr>
                <tr>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="#"><img src="https://via.placeholder.com/220x180/9932CC/000000" alt="Product"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="#">Cole Haan Crossbody</a></h4><span><em>Size:</em> -</span><span><em>Color:</em> Turquoise</span>
                            </div>
                        </div>
                    </td>
                    <td class="text-center">
                        <div class="count-input">
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>
                        </div>
                    </td>
                    <td class="text-center text-lg text-medium">$200.00</td>
                    <td class="text-center">—</td>
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash"></i></a></td>
                </tr>
                -->
				</tbody>
			</table>
		</div>
		<div class="shopping-cart-footer">

			<div class="column text-lg">
				Subtotal:<span id="subtotal"></span> <span class="text-medium"></span>
			</div>
		</div>
		<div class="shopping-cart-footer">
			<div class="column">
				<a class="btn btn-outline-secondary" href="#"><i
					class="icon-arrow-left"></i>&nbsp;Back to Shopping</a>
			</div>
			<div class="column">
				<a class="btn btn-success" href="#">Checkout</a>
			</div>
		</div>
	</div>

	<!-- footer_start  -->
	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="footer_widget">
							<h3 class="footer_title">Contact Us</h3>
							<ul class="address_line">
								<li>+555 0000 565</li>
								<li><a href="#">Demomail@gmail.Com</a></li>
								<li>700, Green Lane, New Yorks, USA</li>
							</ul>
						</div>
					</div>
					<div class="col-xl-3  col-md-6 col-lg-3">
						<div class="footer_widget">
							<h3 class="footer_title">Our Servces</h3>
							<ul class="links">
								<li><a href="${pageContext.request.contextPath}/faq">FAQ</a></li>
								<li><a href="#">Pet surgeries </a></li>
								<li><a href="#">Pet Adoption</a></li>
								<li><a href="#">Dog Insurance</a></li>
								<li><a href="#">Dog Insurance</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-3  col-md-6 col-lg-3">
						<div class="footer_widget">
							<h3 class="footer_title">Quick Link</h3>
							<ul class="links">

								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Login info</a></li>
								<li><a href="#">Knowledge Base</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-3 col-md-6 col-lg-3 ">
						<div class="footer_widget">
							<div class="footer_logo">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/img/logo.png"
									alt="">
								</a>
							</div>
							<p class="address_text">239 E 5th St, New York NY 10003, USA
							</p>
							<div class="socail_links">
								<ul>
									<li><a href="#"> <i class="ti-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="ti-pinterest"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-google-plus"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-linkedin"></i>
									</a></li>
								</ul>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right_text">
			<div class="container">
				<div class="bordered_1px"></div>
				<div class="row">
					<div class="col-xl-12">
						<p class="copy_right text-center">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="ti-heart" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>

					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer_end  -->


	<script type="text/javascript">
		
	$(document).on('click','#basketorder',function(){
		
		var part = $(this).parents('#tr');
		var bs_num = $(part).find("#bs_num").html();

		location.href="${pageContext.request.contextPath}/shop/basketlistorder?bs_num="+bs_num;

		
	});
	/*	
	
	$(document).ready(function() {
			let sub = "";
		//	let subtot =0;
		 let sub2 ="";	
		tr_lengths =$(".table tr").length;
			sub =$('.table tr:eq(2)>td:eq(1)').children().last();
			var a=	$('#lastprice').find('input[name="amount"]').val();
			var a=	$('#lastprice').find('input[name="amount"]').val();
			console.log(sub)	
				console.log("aaa"+a)	
			console.log(tr_lengths)	
		//	for(i=1;i<tr_lengths;i++){
		sub =$('.table tr:eq('+i+')>td:eq(1)').text();
				
		
	
		console.log("test1:"+subtot)	
		$("#subtotal").html(subtot);
		});
	*/
		let ea = 0;
		tagprice = 0;
		let bk_totalprice = 0;
		$(document).on('change', '.chGea', function() {
			ea = parseInt($(this).val());
			console.log("ea:" + ea)
			tag_price = parseInt($(this).parent().children().eq(5).html());
			console.log("tag_price:" + tag_price)
			let eachtot = ea*tag_price;
		var which	=$(this).parent().parent().next().html(eachtot);
		console.log("which" + which)
		});
/*
		let subtot = 0;
		$(document).on('change', 'tr', function() {
			tr_lengths = $(".table tr").length;
			console.log("테이블row" + tr_lengths)
			subtot = 0;
			for (i = 1; i < tr_lengths; i++) {
				sub = $('.table tr:eq(' + i + ')>td:eq(2)').html();
				console.log("해당가격" + sub)

				subtot += parseInt(sub)

			}
			console.log("test2:" + subtot)

			$("#subtotal").html(subtot);
		});

		/*
		let tr_length = 0;
		let tot_price = 0;
		$(document).ready(function() {
		tr_length =$(".table tr").length;
		td_view =$(".table tr td").eq(2).text();
		console.log("td_view"+td_view);
		console.log(tr_length)
			let sum =0;
		 */

		/*for(let i=0; i<tr_length; i++){
			tot_price += parseInt($(".table tr").eq(i).text());
			console.log(tot_price)
		}
		 
		});
		 */	
		
	
		var bk_ea = "";
		var bs_num = "";
		var bk_num="";
		//var cnt2 ="";
		$(document).on('click', '.changeNum', function() {
			bk_ea = $(this).prev().val();
			let eachprice =0;
			bs_num = $(this).next().next().next().text().trim();
			bk_num = $(this).next().next().next().next().text().trim();
			eachprice = parseInt($(this).next().next().text().trim());
			
			console.log(eachprice) //장바구니 테이블 토탈금액 
			//price = $("#eachprice").html();
			console.log("수량" + bk_ea)
			console.log("bs_num:" + bs_num)
			console.log("bk_num:" + bk_num)
		let tot_p = $(this).parent().parent().children();
			console.log(tot_p)
			let tots = 0;
			let  bs_ea =0;
			
			
			$(tot_p).each(function() {
			let a =	$(this).find(".chGea").val();
					console.log("a"+a);
			bs_ea += parseInt(a);
			});
			
		 console.log( bs_ea*eachprice+"장바구니테이블가격")
		console.log( bk_ea*eachprice+"장바구니리스트테이블가격")	
		let bk_totalprice = 0;
		let bs_price = 0;
		bk_totalprice = bs_ea*eachprice;
		bs_price = bk_ea*eachprice;
		$.ajax({
				url : "${pageContext.request.contextPath}/shop/ToTalUpdate",
				data : {
					"bk_num" : bk_num,
					"bk_ea" : bk_ea,
					"bk_totalprice" : bk_totalprice,
					"bs_num" : bs_num,
					"bs_ea" :bs_ea,				
					"bs_price" : bs_price,
					
				},
				dataType : "json",
				success : function(data) {
					if (data.result == 'success') {
						alert("수정완료");
					}
				}

			})

		});
		 // bk_num  장바구니 리스트랑 bk_num bk_ea bk_totalprice   // 장바구니 테이블 bs_num 
	
		
		var who = "";
		$(document).on('click', '.delete1', function() {
			bs_num = $(this).next().next().text().trim();
			bk_num = $(this).next().next().next().text().trim();
			console.log("bk_numff" + bk_num);
			console.log("bs_numdd" + bs_num);
			$.ajax({
				url : "${pageContext.request.contextPath}/shop/DelCartList",
				data : {
					"bk_num" : bk_num,
					"bs_num" : bs_num 
				},
				dataType : "json",
				success : function(data) {
					console.log(data.result)
				}
			});
			let size = $(this).parent().parent().children().length;
		
			
			console.log(size+"size");
			if (size==1) {
					console.log("들어옴")
					$(this).closest('tr').remove();
				alert("삭제완료");
			} else {
				who = $(this).parent().remove();
			}
		});
		
		
		var who2 = "";
		$(document).on('click', '.deleteBs', function() {
			var	who2 = $(this).next().text();
			console.log("who2" + who2);
	
		
			$.ajax({
				url : "${pageContext.request.contextPath}/shop/DelBasketAll",
				data : {
					"bs_num" : bs_num
				},
				dataType : "json",
				success : function(data) {
					console.log(data.result)
				}
			});
			
			who = $(this).parent().remove();
			if (who != null) {
				alert("삭제완료");

			} else {
				alert("삭제오류 확인필요");
			}
		});
		

		
		var checking = "";
		var alltbody = "";
		$(document)
				.on(
						'click',
						'#DeleteAll',
						function() {
							var checking = confirm("장바구니전체를 비우시겠습니까?");
							if (checking == true) {
								$
										.ajax({
											url : "${pageContext.request.contextPath}/shop/DelCartListAll",
											dataType : "json",
											success : function(data) {
												console.log(data.result)
											}
										});
								alltbody = $(this).closest('thead').next()
										.remove();
								alert("삭제완료하였습니다");
							} else if (checking == false) {
								alert("삭제취소완료");
							}

						});
		
	
		
		
		</script>

</body>
</html>