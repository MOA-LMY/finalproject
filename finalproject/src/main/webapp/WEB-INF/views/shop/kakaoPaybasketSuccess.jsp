<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
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
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<header>
		<div class="header-area ">
			<div class="header-top_area">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-8">
							<div class="short_contact_list">
								<ul>
									<li>
									<a href="${pageContext.request.contextPath}/goodtest">??????1</a>
									</li>
									<li>
									<a href="${pageContext.request.contextPath}/resources/#">??????2</a>
									</li>
									<li>
									<a href="${pageContext.request.contextPath}/lsh/adminmain">????????? ?????????</a>
									</li>	
								</ul>
							</div>
						</div>
						<div class="col-lg-6 col-md-4 ">
							<div class="social_media_links">
								<a href="${pageContext.request.contextPath}/resources/#">
								
								<i class="fa"> ??????1 </i> 
								
								</a> 
								<a href="${pageContext.request.contextPath}/login/login"> 
								<i class="fa"> ????????? </i>
								</a> 
								<a href="${pageContext.request.contextPath}/resources/#"> 
								
								<i class="fa"> ???????????? </i>
								
								</a> 
								
								<a href="${pageContext.request.contextPath}/resources/#"> 
								<i class="fa"> mypage </i>
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
										<li><a href="${pageContext.request.contextPath}/">???</a></li>
										<li><a href="${pageContext.request.contextPath}/about">?????????</a></li>
										<li><a href="#">blog <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="${pageContext.request.contextPath}/blog">?????????</a></li>
												<li><a
													href="${pageContext.request.contextPath}/singleblog">???????????????</a></li>
											</ul></li>
										<li><a href="#">pages <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a
													href="${pageContext.request.contextPath}/elements">elements</a></li>

											</ul></li>
										<li><a href="${pageContext.request.contextPath}/">?????????</a></li>
										<li><a href="${pageContext.request.contextPath}/contact">?????????</a></li>
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


<div class="container padding-bottom-3x mb-1" style="
    text-align: center;
">
 <h1>??????????????? ????????? ??????????????? ?????????????????????.</h1><br>
 
<p>????????????:     [[${info.approved_at}]]</p><br>
<p>????????????:    [[${o_num}]]</p><br>
<p>?????????:      [[${info.item_name}]]</p><br>
<p>????????????:    [[${info.quantity}???]]</p><br>

<p>??????:    	  [[${coupon}]]</p><br/>

<p>????????????:    [[${info.amount.total}???]]</p><br>
<p>????????????:    [[${info.payment_method_type}]]</p><br>

<button id="shoping"  style="
					    position: relative;
					   left: 350px;
					    bottom: 30px;
					    color: #909092;
					    font-size: 20px;
					    border: solid 1px white;
					">??????</button>

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
	
	$("#shoping").click(function(){
		
		location.href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=1";

	});
</script>
	
</body>
</html>