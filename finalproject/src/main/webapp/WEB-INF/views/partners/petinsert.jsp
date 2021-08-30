<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petinsert.jsp</title>
<style>
    .btn2{    height: 45px;
    line-height: 43px;
    padding: 0 18px;margin: 0 3px;
    min-width: 160px;text-decoration: none;
    cursor: pointer;    display: inline-block;
    box-sizing: border-box;
    border-radius: 4px;
    border: 1px solid #414141;
    font-size: 14px;
    color: #ffffff !important;
    text-align: center;
    vertical-align: middle;
    background-color: #414141;}
    
    .petname{border: 1px solid #DDD;
    background: #fff url(../images/icon/arr_dw_13.png);
    background-repeat: no-repeat;
    background-position: right 6px top 50%;
    height: 40px;
    line-height: 40px;
    padding: 0 35px 0 18px;
    padding-bottom:0 !important;
    font-size: 14px;
    box-sizing: border-box;
    background-color: #F8F8F8;
    border-color: #DDD;
    border-bottom:1px solid #DDD !important;}
    
    .petage{border: 1px solid #DDD;
    background: #fff url(../images/icon/arr_dw_13.png);
    background-repeat: no-repeat;
    background-position: right 6px top 50%;
    height: 40px;
    line-height: 40px;
    padding: 0 35px 0 18px;
    padding-bottom:0 !important;
    font-size: 14px;
    box-sizing: border-box;
    background-color: #F8F8F8;
    border-color: #DDD;
    border-bottom:1px solid #DDD !important;}
    
        .petcolor{border: 1px solid #DDD;
    background: #fff url(../images/icon/arr_dw_13.png);
    background-repeat: no-repeat;
    background-position: right 6px top 50%;
    height: 40px;
    line-height: 40px;
    padding: 0 35px 0 18px;
    padding-bottom:0 !important;
    font-size: 14px;
    box-sizing: border-box;
    background-color: #F8F8F8;
    border-color: #DDD;
    border-bottom:1px solid #DDD !important;}
    
        .petprice	{border: 1px solid #DDD;
    background: #fff url(../images/icon/arr_dw_13.png);
    background-repeat: no-repeat;
    background-position: right 6px top 50%;
    height: 40px;
    line-height: 40px;
    padding: 0 35px 0 18px;
    padding-bottom:0 !important;
    font-size: 14px;
    box-sizing: border-box;
    background-color: #F8F8F8;
    border-color: #DDD;
    border-bottom:1px solid #DDD !important;}
    
        .pettype{border: 1px solid #DDD;
    background: #fff url(../images/icon/arr_dw_13.png);
    background-repeat: no-repeat;
    background-position: right 6px top 50%;
    height: 40px;
    line-height: 40px;
    padding: 0 35px 0 18px;
    padding-bottom:0 !important;
    font-size: 14px;
    box-sizing: border-box;
    background-color: #F8F8F8;
    border-color: #DDD;
    border-bottom:1px solid #DDD !important;}
    
        .petcontent{background-color: #F8F8F8;
    border-color: #DDD;
    padding:18px !important;}
    
            .petrnum{border: 1px solid #DDD;
    background: #fff url(../images/icon/arr_dw_13.png);
    background-repeat: no-repeat;
    background-position: right 6px top 50%;
    height: 40px;
    line-height: 40px;
    padding: 0 35px 0 18px;
    padding-bottom:0 !important;
    font-size: 14px;
    box-sizing: border-box;
    background-color: #F8F8F8;
    border-color: #DDD;
    border-bottom:1px solid #DDD !important;}
    
            .ptid{border: 1px solid #DDD;
    background: #fff url(../images/icon/arr_dw_13.png);
    background-repeat: no-repeat;
    background-position: right 6px top 50%;
    height: 40px;
    line-height: 40px;
    padding: 0 35px 0 18px;
    padding-bottom:0 !important;
    font-size: 14px;
    box-sizing: border-box;
    background-color: #F8F8F8;
    border-color: #DDD;
    border-bottom:1px solid #DDD !important;}
    
         .btn3{height: 45px;
    line-height: 43px;
    padding: 0 18px;margin: 0 3px;
    min-width: 160px;text-decoration: none;
    cursor: pointer;   display: inline-block;
    box-sizing: border-box;
    border-radius: 4px;
    border: 1px solid #000000;
    font-size: 14px;
    color: #000000 !important;
    text-align: center;
    vertical-align: middle;
    background-color: #ffffff;}
    
    .title {padding-bottom:40px; border-bottom:1px solid #000; margin-bottom:30px;}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources//join/css/mypage.css">
	
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
									<a href="${pageContext.request.contextPath}/goodtest">버튼1</a>
									</li>
									<li>
									<a href="${pageContext.request.contextPath}/resources/#">버튼2</a>
									</li>
									<li>
									<a href="${pageContext.request.contextPath}/lsh/adminmain">관리자 테스트</a>
									</li>	
								</ul>
							</div>
						</div>
						<div class="col-lg-6 col-md-4 ">
							<div class="social_media_links">
								<a href="${pageContext.request.contextPath}/resources/#">
								
								<i class="fa"> 메인1 </i> 
								
								</a> 
								<a href="${pageContext.request.contextPath}/login/login"> 
								<i class="fa"> 로그인 </i>
								</a> 
								<a href="${pageContext.request.contextPath}/resources/#"> 
								
								<i class="fa"> 장바구니 </i>
								
								</a> 
								
								<a href="${pageContext.request.contextPath}/resources/#"> 
								<i class="fa"> partnerspage </i>
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

<h1 class="title">무료분양글 등록하기</h1>
<form method="post" action="${pageContext.request.contextPath }/partners/petinsert" enctype="multipart/form-data">
	pet이름<br>
	<input type="text" class="petname" name="pet_name"><br>
	pet나이<br>
	<input type="text" class="petage" name="pet_age"><br>
	petColor<br>
	<input type="text" class="petcolor"name="pet_color"><br>
	pet가격<br>
	<input type="text" class="petprice" name="pet_price"><br> 
	petType<br>
	<input type="text" class="pettype"name="pet_type"><br>
	예약번호<br>
	<input type="text" class="petrnum"name="r_num"><br>
	파트너아이디<br>
	<input type="text" class="ptid"name="pt_id"><br>
	상세설명<br>
	<textarea class="petcontent" rows="20" cols="100" name="pet_content"></textarea><br>
	<!--  <input rows="20" cols="100" type="text" class="petcontent" name="pet_content"><br>-->
	pet사진<br>
	<input type="file" name="file1"><br>
	<input style="width: 20%; left: 80%;" class="btn2" type="submit" value="등록">
	<input style="width: 20%; left: 60%;" class="btn3" type="button" value="취소" onclick="history.back()">
</form>
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
</body>
</html>