
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>go_to_detail</title>
  <!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.png">
<!-- Place favicon.ico in the root directory -->    
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<title>Animal</title>	

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.png">
<!-- Place favicon.ico in the root directory -->



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
	href="${pageContext.request.contextPath}/resources/css/css_go_to_detail/indexstyle.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_go_to_detail/go_to_detail.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_go_to_detail/go_to_detail_option.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]ddddd-->
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

<!-- center 부분 -->

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
<div class="col-sm-12 col-md-12 col-lg-12">
	
    <!-- product -->
    <div class="product-content product-wrap clearfix product-deatil">
        <div class="row">
            <div class="col-md-5 col-sm-12 col-xs-12">
                <div class="product-image">
                    <div id="myCarousel-2" class="carousel slide" style="display: table;">
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel-2" data-slide-to="0" class=""></li>
                            <li data-target="#myCarousel-2" data-slide-to="1" class="active"></li>
                            <li data-target="#myCarousel-2" data-slide-to="2" class=""></li>
                        </ol>
            		
                        <div class="carousel-inner">
                            <!-- Slide 1 -->
                            <div class="item active">	
                                <img src="${pageContext.request.contextPath}/resources/img/goods/${vo2.g_saveimg}" class="img-responsive" alt="" />
                            </div>
                            <!-- Slide 2 -->
                            <div class="item">
                                <img src="https://via.placeholder.com/700x400/87CEFA/000000" class="img-responsive" alt="" />
                            </div>
                            <!-- Slide 3 -->
                            <div class="item">
                                <img src="https://via.placeholder.com/700x400/B0C4DE/000000" class="img-responsive" alt="" />
                            </div>
                        </div>
                        <a class="left carousel-control" href="#myCarousel-2" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a>
                        <a class="right carousel-control" href="#myCarousel-2" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-md-offset-1 col-sm-12 col-xs-12">
                <h2 class="name">
             		
                    ${vo2.g_name }
                    <small>Product by <a href="javascript:void(0);">AOPSZ</a></small>
                    <i class="fa fa-star fa-2x text-primary"></i>
                    <i class="fa fa-star fa-2x text-primary"></i>
                    <i class="fa fa-star fa-2x text-primary"></i>
                    <i class="fa fa-star fa-2x text-primary"></i>
                    <i class="fa fa-star fa-2x text-muted"></i>
                    <span class="fa fa-2x"><h5>(${vo2.g_hit}) Votes</h5></span>
                    <a href="javascript:void(0);">${vo2.g_hit} customer reviews</a>
                </h2>
                <hr />
                <h3 class="price-container">
                    ${vo2.g_price }
                    <small>*includes tax</small>
                </h3>
                <div class="certified">
                    <ul>
                        <li>
                            <a href="javascript:void(0);">Delivery time<span>3 Working Days</span></a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">Certified<span>Quality Assured</span></a>
                        </li>
                    </ul>
                </div>
                <hr />
     
     <div class="group-option">     
<!-- 컬러옵션 선택사항dfdfdfdf -->

<div class="group-checkbox">  
  <div>choose color:</div>
<c:forEach var="vo" items="${vo }" >
 <c:choose>    
  
 <c:when test="${ 1 == vo.c_num && '#FFFEF9' == vo.c_colorcode }">

  <div class="one-checkbox skin-6" id="options" >
    <label>
      <input type="checkbox" class="chk" id="chk1" value="WHITE">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
 </c:forEach>
 
 <c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 2 == vo.c_num && '#DEB887' == vo.c_colorcode }">
  <div class="one-checkbox skin-6">
    <label>
      <input type="checkbox" class="chk" id="chk2" value="BEGIE">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
 </c:forEach>
 <c:forEach var="vo" items="${vo }" >
   <c:choose> 
  <c:when test="${ 3 == vo.c_num && '#FCF16E' == vo.c_colorcode }">
  <div class="one-checkbox skin-6" >
    <label>
      <input type="checkbox"  class="chk" id="chk3" value="YELLOW">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
<c:otherwise>
  <div class="one-checkbox skin-6" style="display: none;" >
    <label>
      <input type="checkbox">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:otherwise>
</c:choose> 
</c:forEach>

<c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 4 == vo.c_num && '#98FB98' == vo.c_colorcode }">
  <div class="one-checkbox skin-6"  >
    <label>
      <input type="checkbox"  class="chk" id="chk4" value="GREEN">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
</c:forEach>

<c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 5 == vo.c_num && '#FFC0CB' == vo.c_colorcode }">
  <div class="one-checkbox skin-6" >
    <label>
      <input type="checkbox"  class="chk" id="chk5" value="PINK">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
</c:forEach>

<c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 6 == vo.c_num && '#ED1941' == vo.c_colorcode }">
  <div class="one-checkbox skin-6">
    <label>
      <input type="checkbox"  class="chk" id="chk6" value="RED">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
</c:forEach>

<c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 7 == vo.c_num && '#AFB4DB' == vo.c_colorcode }">
  <div class="one-checkbox skin-6"  >
    <label>
      <input type="checkbox" class="chk" id="chk7" value="PURPLE">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
</c:forEach>

<c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 8 == vo.c_num && '#4169E1' == vo.c_colorcode }">
  <div class="one-checkbox skin-6" >
    <label>
      <input type="checkbox" class="chk" id="chk8" value="BLUE">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
</c:forEach>

<c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 9 == vo.c_num && '#D3D7D4' == vo.c_colorcode }">
  <div class="one-checkbox skin-6" >
    <label>
      <input type="checkbox" class="chk" id="chk9" value="GRAY">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
</c:forEach>


<c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 10 == vo.c_num && '#003A6C' == vo.c_colorcode }">
  <div class="one-checkbox skin-6" >
    <label>
      <input type="checkbox" class="chk" id="chk10" value="NAVY">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
</c:forEach>






<c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 11 == vo.c_num && '#000000' == vo.c_colorcode }">
  <div class="one-checkbox skin-6" >
    <label>
      <input type="checkbox" class="chk" id="chk11" value="BLACK">
      <i style="background-color: ${vo.c_colorcode}"></i>
    </label>
  </div>
</c:when>
</c:choose>
</c:forEach>
  

</div>


<!-- 사이즈 옵션 사항 -->

<div class="group-checkbox">
  <div>choose size:</div>
  <c:forEach var="vo" items="${vo }" >
  <c:choose> 
  <c:when test="${ 1 == vo.sz_snum && 'S' == vo.sz_sizename }">
  <div class="one-checkbox skin-7">
    <label>
      <input type="checkbox" class="schk" id="schk1" value="S">
      <i>S</i>
    </label>
  </div>
  </c:when>
  </c:choose>
 </c:forEach> 
 
 <c:forEach var="vo" items="${vo }" >
      <c:choose> 
  <c:when test="${ 2 == vo.sz_snum && 'M' == vo.sz_sizename }">
  <div class="one-checkbox skin-7" id="options">
    <label>
      <input type="checkbox"class="schk" id="schk2" value="M">    
      <i>M</i>
    </label>
  </div>
  </c:when>
  </c:choose>
  </c:forEach>
  
  <c:forEach var="vo" items="${vo }" >
    <c:choose> 
  <c:when test="${ 3 == vo.sz_snum && 'L' == vo.sz_sizename }">
  <div class="one-checkbox skin-7" id="options">
    <label>
      <input type="checkbox" class="schk" id="schk3" value="L">
      <i>L</i>
    </label>
  </div>
  </c:when>
  </c:choose>
  </c:forEach>

</div>

<!-- / One checkbox group skin-7 -->
  </div>              

                <div class="description description-tabs">
                    <ul id="myTab" class="nav nav-pills">
                        <li class="active"><a href="#more-information" data-toggle="tab" class="no-margin">Product Description </a></li>
                        <li class=""><a href="#specifications" data-toggle="tab">Specifications</a></li>
                        <li class=""><a href="#reviews" data-toggle="tab">Reviews</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="more-information">
                            <br />
                            <strong>Description Title</strong>
                            <p>
                                Integer egestas, orci id condimentum eleifend, nibh nisi pulvinar eros, vitae ornare massa neque ut orci. Nam aliquet lectus sed odio eleifend, at iaculis dolor egestas. Nunc elementum pellentesque augue
                                sodales porta. Etiam aliquet rutrum turpis, feugiat sodales ipsum consectetur nec.
                            </p>
                        </div>
                        <div class="tab-pane fade" id="specifications">
                            <br />
                            <dl class="">
                                <dt>Gravina</dt>
                                <dd>Etiam porta sem malesuada magna mollis euismod.</dd>
                                <dd>Donec id elit non mi porta gravida at eget metus.</dd>
                                <dd>Eget lacinia odio sem nec elit.</dd>
                                <br />

                                <dt>Test lists</dt>
                                <dd>A description list is perfect for defining terms.</dd>
                                <br />

                                <dt>Altra porta</dt>
                                <dd>Vestibulum id ligula porta felis euismod semper</dd>
                            </dl>
                        </div>
                        <div class="tab-pane fade" id="reviews">
                            <br />
                            <form method="post" class="well padding-bottom-10" onsubmit="return false;">
                                <textarea rows="2" class="form-control" placeholder="Write a review"></textarea>
                                <div class="margin-top-10">
                                    <button type="submit" class="btn btn-sm btn-primary pull-right">
                                        Submit Review
                                    </button>
                                    <a href="javascript:void(0);" class="btn btn-link profile-link-btn" rel="tooltip" data-placement="bottom" title="" data-original-title="Add Location"><i class="fa fa-location-arrow"></i></a>
                                    <a href="javascript:void(0);" class="btn btn-link profile-link-btn" rel="tooltip" data-placement="bottom" title="" data-original-title="Add Voice"><i class="fa fa-microphone"></i></a>
                                    <a href="javascript:void(0);" class="btn btn-link profile-link-btn" rel="tooltip" data-placement="bottom" title="" data-original-title="Add Photo"><i class="fa fa-camera"></i></a>
                                    <a href="javascript:void(0);" class="btn btn-link profile-link-btn" rel="tooltip" data-placement="bottom" title="" data-original-title="Add File"><i class="fa fa-file"></i></a>
                                </div>
                            </form>

                            <div class="chat-body no-padding profile-message">
                                <ul>
                                    <li class="message">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="online" />
                                        <span class="message-text">
                                            <a href="javascript:void(0);" class="username">
                                                Alisha Molly
                                                <span class="badge">Purchase Verified</span>
                                                <span class="pull-right">
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                    <i class="fa fa-star fa-2x text-muted"></i>
                                                </span>
                                            </a>
                                            Can't divide were divide fish forth fish to. Was can't form the, living life grass darkness very image let unto fowl isn't in blessed fill life yielding above all moved
                                        </span>
                                        <ul class="list-inline font-xs">
                                            <li>
                                                <a href="javascript:void(0);" class="text-info"><i class="fa fa-thumbs-up"></i> This was helpful (22)</a>
                                            </li>
                                            <li class="pull-right">
                                                <small class="text-muted pull-right ultra-light"> Posted 1 year ago </small>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="message">
                                        <img src="https://bootdey.com/img/Content/avatar/avatar2.png" class="online" />
                                        <span class="message-text">
                                            <a href="javascript:void(0);" class="username">
                                                Aragon Zarko
                                                <span class="badge">Purchase Verified</span>
                                                <span class="pull-right">
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                    <i class="fa fa-star fa-2x text-primary"></i>
                                                </span>
                                            </a>
                                            Excellent product, love it!
                                        </span>
                                        <ul class="list-inline font-xs">
                                            <li>
                                                <a href="javascript:void(0);" class="text-info"><i class="fa fa-thumbs-up"></i> This was helpful (22)</a>
                                            </li>
                                            <li class="pull-right">
                                                <small class="text-muted pull-right ultra-light"> Posted 1 year ago </small>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                <div class="SelectOption" id="SelectOption">
                
                </div>
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <a href="javascript:void(0);" class="btn btn-success btn-lg">Add to cart ($129.54)</a>
                    </div>
                    <div class="col-sm-12 col-md-6 col-lg-6">
                        <div class="btn-group pull-right">
                            <button class="btn btn-white btn-default"><i class="fa fa-star"></i> Add to wishlist</button>
                            <button class="btn btn-white btn-default"><i class="fa fa-envelope"></i> Contact Seller</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="margin-left:30%; margin-top:30px; padding-bottom:30px; position: relative; ">
        <img src="${pageContext.request.contextPath}/resources/img/detail1.jpg">
        
        </div>
    </div>
    <!-- end product -->
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
		var chkVal = "";
		var schkVal = "";
		for(let i=1;i<12;i++){
			$("#chk"+i).click(function(){
				if($(this).prop("checked")==true){
					$(".chk").prop("checked",false);
					$(this).prop("checked",true);
					chkVal= $(this).val();
					console.log(chkVal);
					
					if(chkVal!=""&&schkVal!=""){
						var Number = "<div>"+chkVal+","+schkVal+"<input type=number></div>";
					// var Number ="<div><input type=number></div>";
					//	$("#SelectOption").append("color :"+ chkVal+","+"size :");
						$("#SelectOption").append(Number);
						$(".chk").prop("checked",false);
						$(".schk").prop("checked",false);
						chkVal="";
						schkVal="";
					}
				}
			})
			
		}
		for(let i=1;i<4;i++){
			$("#schk"+i).click(function(){
				if($(this).prop("checked")==true){
					$(".schk").prop("checked",false);
					$(this).prop("checked",true);
					schkVal= $(this).val();
					console.log(chkVal);
					if(chkVal!=""&&schkVal!=""){
						var Number = "<div>"+chkVal+","+schkVal+"<input type=number></div>";
						//$("#SelectOption").append("color :"+ chkVal+","+"size :" + schkVal);
						$("#SelectOption").append(Number);
						$(".chk").prop("checked",false);
						$(".schk").prop("checked",false);
						chkVal="";
						schkVal="";
					}
				}
			})
		}
		
		
		
		
		
	
/*		

		$(".group-option #options").on('click',function() {
			console.log("함수성공");
			var idx = $(this).index();
			//var size = $(this).attr("id");
			console.log(idx);
			$(".SelectOption").text(size);
		});
*/  
	</script>
</body>
</html>