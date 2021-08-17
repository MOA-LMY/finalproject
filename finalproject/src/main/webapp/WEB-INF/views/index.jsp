<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Animal</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/gijgo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- 
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/responsive.css">
 -->
<!-- 메인굿즈 css링크 부분 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/maingoods.css">

</head>
<script type="text/javascript">
	
</script>
<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

	<header>
		<div class="header-area ">
			<div class="header-top_area">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-8">
							<div class="short_contact_list">
								<ul>
									<li><a href="${pageContext.request.contextPath}/goodtest">버튼1
											</a></li>
									<li><a
										href="${pageContext.request.contextPath}/resources/#">버튼2</a></li>
									<li><a
										href="${pageContext.request.contextPath}/lsh/adminmain">관리자 테스트</a></li>	
									<li><a
										href="${pageContext.request.contextPath}/admin/">admin</a></li>	
								</ul>
							</div>
						</div>
						<div class="col-lg-6 col-md-4 ">
							<div class="social_media_links">
								<a href="${pageContext.request.contextPath}/sec/members"><i
									class="fa"> 메인1 </i> </a> <a
									href="${pageContext.request.contextPath}/login/login">
									<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/account-login-512-white.png">
								</a> <a href="${pageContext.request.contextPath}/resources/#"> 
								<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/shopping-basket-512-white.png">
								</a> <a href="${pageContext.request.contextPath}/members/mypage"> 
								<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/guest-512-white.png">
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
											</ul> </li>
										<li><a href="#">pages <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a
													href="${pageContext.request.contextPath}/elements">elements</a></li>

											</ul> </li>
										<li><a href="${pageContext.request.contextPath}/">서비스 </a></li>
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

	<!-- slider_area_start -->
	<div class="slider_area">
		<div class="single_slider slider_bg_1 d-flex align-items-center">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-6">
						<div class="slider_text">
							<h3>
								We Care <br> <span>Your Pets</span>
							</h3>
							<p>
								Lorem ipsum dolor sit amet, consectetur <br> adipiscing
								elit, sed do eiusmod.
							</p>
							<a href="contact.html" class="boxed-btn4">Contact Us</a>
						</div>
					</div>
				</div>
			</div>
			<div class="dog_thumb d-none d-lg-block">
				<img
					src="${pageContext.request.contextPath}/resources/img/banner/dog.png"
					alt="">
			</div>
		</div>
	</div>
	<!-- slider_area_end -->

	<!-- list_start  -->
	<div class="service_area">
		<div class="container">
			<div class="row justify-content-center ">
				<div class="col-lg-7 col-md-10">
					<div class="section_title text-center mb-95">
						<h3>강아지상품 list 부분</h3>
						<p>강아지 list에 대한 설명부분</p>
						
					</div>
				</div>
			</div>
			<div class="row justify-content-center">


				<!-- 메인 상품굿즈 구현 부분 -->
				<ul class="tiles">
					
					<li>
						<h2>Healthy Care</h2> <a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=1">View All ▶▶</a>
					</li>

						<li class="wow bounceInLeft">
						<img src="${pageContext.request.contextPath}/resources/img/goods/${healthygoodsaveimg}">
						</li>

					<li>
						<h2>Fashion</h2> <a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=2">View All ▶▶</a>
					</li>
					
					<li class="wow bounceInRight">
					
					<img src="${pageContext.request.contextPath}/resources/img/goods/${fashiongoodsaveimg}">
					</li>
					
					
					<li class="wow bounceInLeft">
					
					<img src="${pageContext.request.contextPath}/resources/img/goods/${foodgoodsaveimg}">
					</li>
					
					<li style="text-align: left; padding-top: 70px;">
						<h2>Food/</h2>
						<h2>Snacks</h2> 
						<a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=3" style="text-align: left; padding-bottom: 30px;"> View All ◀◀ </a>
					</li>
					<li class="wow bounceInRight">
					
					<img src="${pageContext.request.contextPath}/resources/img/goods/${livegoodsaveimg}">
					</li>
					<li style="text-align: left; padding-top: 50px;">
						<h2>Living/</h2>
						<h2>Home</h2>
						<h2>Appliances</h2> <a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=4">View All ◀◀</a>
					</li>
				</ul>


			</div>
		</div>
	</div>
	<!--list_start end -->

	<!-- pet_care_area_start  -->
	<div class="pet_care_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-5 col-md-6">
					<div class="pet_thumb">
						<img
							src="${pageContext.request.contextPath}/resources/img/about/pet_care.png"
							alt="">
					</div>
				</div>
				<div class="col-lg-6 offset-lg-1 col-md-6">
					<div class="pet_info">
						<div class="section_title">
							<h3>
								<span>We care your pet </span> <br> As you care
							</h3>
							<p>
								Lorem ipsum dolor sit , consectetur adipiscing elit, sed do <br>
								iusmod tempor incididunt ut labore et dolore magna aliqua. <br>
								Quis ipsum suspendisse ultrices gravida. Risus commodo <br>
								viverra maecenas accumsan.
							</p>
							<a href="about.html" class="boxed-btn3">About Us</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- pet_care_area_end  -->

	<!-- adapt_area_start  -->
	<div class="adapt_area">
		<div class="container">
			<div class="row justify-content-between align-items-center">
				<div class="col-lg-5">
					<div class="adapt_help">
						<div class="section_title">
							<h3>
								<span>We need your</span> help Adopt Us
							</h3>
							<p>Lorem ipsum dolor sit , consectetur adipiscing elit, sed
								do iusmod tempor incididunt ut labore et dolore magna aliqua.
								Quis ipsum suspendisse ultrices.</p>
							<a href="contact.html" class="boxed-btn3">Contact Us</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="adapt_about">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<div class="single_adapt text-center">
									<img
										src="${pageContext.request.contextPath}/resources/img/adapt_icon/1.png"
										alt="">
									<div class="adapt_content">
										<h3 class="counter">452</h3>
										<p>Pets Available</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="single_adapt text-center">
									<img
										src="${pageContext.request.contextPath}/resources/img/adapt_icon/3.png"
										alt="">
									<div class="adapt_content">
										<h3>
											<span class="counter">52</span>+
										</h3>
										<p>Pets Available</p>
									</div>
								</div>
								<div class="single_adapt text-center">
									<img
										src="${pageContext.request.contextPath}/resources/img/adapt_icon/2.png"
										alt="">
									<div class="adapt_content">
										<h3>
											<span class="counter">52</span>+
										</h3>
										<p>Pets Available</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- adapt_area_end  -->

	<!-- testmonial_area_start  -->
	<div class="testmonial_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="textmonial_active owl-carousel">
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img
										src="${pageContext.request.contextPath}/resources/img/testmonial/1.png"
										alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img
										src="${pageContext.request.contextPath}/resources/img/testmonial/1.png"
										alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img
										src="${pageContext.request.contextPath}/resources/img/testmonial/1.png"
										alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- testmonial_area_end  -->

	<!-- team_area_start  -->
	<div class="team_area">
		<div class="container">
			<div class="row justify-content-center ">
				<div class="col-lg-6 col-md-10">
					<div class="section_title text-center mb-95">
						<h3>Meet Your Pet!</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
							sed do eiusmod tempor incididunt ut labore et dolore magna.</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-4 col-md-6">
					<div class="single_team">
						<div class="thumb" onclick="javascript:goPetlist();" >
							<img
								src="${pageContext.request.contextPath}/resources/img/pet/${vo1.pet_saveimg}"
								alt="">
						</div>
						<div class="member_name text-center">
							<div class="mamber_inner">
								<h4>${vo1.pet_name }</h4>
								<p>${vo1.pet_type }</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_team">
						<div class="thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/pet/${vo2.pet_saveimg}"
								alt="">
						</div>
						<div class="member_name text-center">
							<div class="mamber_inner">
								<h4>${vo2.pet_name }</h4>
								<p>${vo2.pet_type }</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_team">
						<div class="thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/pet/${vo3.pet_saveimg}"
								alt="">
						</div>
						<div class="member_name text-center">
							<div class="mamber_inner">
								<h4>${vo3.pet_name }</h4>
								<p>${vo3.pet_type }</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- team_area_start  -->

	<div class="contact_anipat anipat_bg_1">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="contact_text text-center">
						<div class="section_title text-center">
							<h3>Why go with Anipat?</h3>
							<p>Because we know that even the best technology is only as
								good as the people behind it. 24/7 tech support.</p>
						</div>
						<div
							class="contact_btn d-flex align-items-center justify-content-center">
							<a href="contact.html" class="boxed-btn4">Contact Us</a>
							<p>
								Or <a href="#"> +880 4664 216</a>
							</p>
						</div>
					</div>
				</div>
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
								<li>700, Green Lane, New York, USA</li>
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


	<!-- JS here -->

	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/ajax-form.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/imagesloaded.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollIt.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.scrollUp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/gijgo.min.js"></script>

	<!--contact js-->
	<script
		src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script>

	new WOW().init();
	console.log(${mainlist})
		$('#datepicker').datepicker({
			iconsLibrary : 'fontawesome',
			disableDaysOfWeek : [ 0, 0 ],
		//     icons: {
		//      rightIcon: '<span class="fa fa-caret-down"></span>'
		//  }
		});
		$('#datepicker2').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}

		});
		var timepicker = $('#timepicker').timepicker({
			format : 'HH.MM'
		});
		function goPetlist(){
			location.href="${pageContext.request.contextPath}/pet/petlist";
		}
	</script>
</body>

</html>