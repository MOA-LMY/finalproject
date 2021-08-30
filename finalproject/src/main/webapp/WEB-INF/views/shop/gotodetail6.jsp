<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html class="no-js" lang="zxx"  >
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
<link
	href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<title>Animal</title>
<style type="text/css">





.make_star {
	
    position: relative;
    left: 60px;
    bottom: 27px;
    font-weight: 900;
    color: #718795;

}

.amount{
border-radius: 9999em;
outline: none;
	font-family: inherit;
	line-height:inherit;
	color:#2e3750;
	min-width:12em;
	border: thick double #32a1ce;
}


.SelectOption{
left: 5em;
 width: 400px;
border-radius: 70%;
background-color : #f5e9e3;

}

</style>
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


</head>

<body >
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
									class="fa"> 메인1 </i> </a>
									<c:choose>
										<c:when test="${id =='anonymousUser'}">
										 <a	href="${pageContext.request.contextPath}/login/login">
										<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/account-login-512-white.png">
										</a>
										</c:when>
										<c:otherwise>
										<sec:authorize access="isAuthenticated()">
										<a href="#" onclick="document.getElementById('logout').submit();">
										<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/account-logout-512.png">
										</a>
										</sec:authorize>
										</c:otherwise>
									</c:choose>
									 <a href="${pageContext.request.contextPath}/shop/add_to_cart_list"> 
								<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/shopping-basket-512-white.png">
								</a> <a href="${pageContext.request.contextPath}/members/mypage"> 
								<img style="height: 30px; "  src="${pageContext.request.contextPath }/resources/img/index_icon/guest-512-white.png">
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
						<form id="logout" action="${pageContext.request.contextPath}/logout" method="POST">
										   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
										</form>				
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

	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet" />
	<div class="col-sm-12 col-md-12 col-lg-12" style="width: 80%; left: 10%">

		<!-- product -->
		<div class="product-content product-wrap clearfix product-deatil">
			<div class="row">
				<div class="col-md-5 col-sm-12 col-xs-12">
					<div class="product-image">
						<div id="myCarousel-2" class="carousel slide"
							style="display: table;">
							<ol class="carousel-indicators">
								<li data-target="#myCarousel-2" data-slide-to="0" class=""></li>
								<li data-target="#myCarousel-2" data-slide-to="1" class="active"></li>
								<li data-target="#myCarousel-2" data-slide-to="2" class=""></li>
							</ol>

							<div class="carousel-inner" style="height: 400px;">
								<!-- Slide 1 -->
								<div class="item active">
									<img
										src="${pageContext.request.contextPath}/resources/img/goods/${vo2.g_saveimg}"
										class="img-responsive" alt="" />
								</div>
								<!-- Slide 2 -->
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/img/goods/${vo3.gd_saveimg1}"
										class="img-responsive" alt="" />
								</div>
								<!-- Slide 3 -->
								<div class="item">
									<img src="${pageContext.request.contextPath}/resources/img/goods/${vo3.gd_saveimg2}"
										class="img-responsive" alt="" />
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel-2"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control" href="#myCarousel-2"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-md-offset-1 col-sm-12 col-xs-12" style=" box-sizing: border-box;  border-radius: 40px;  border: thick double #4C4C6D;">
					<h2 class="name" style="font-size:3em; font-weight: 800; color: ">

						${vo2.g_name } <small>Product by <a
							href="javascript:void(0);">AOPSZ</a></small><img src="${pageContext.request.contextPath}/resources/img/goods/icons8-star-unscreen.gif" style="width: 20px;">
							<span id="stars_avg" style="display: none;">${stars_avg}</span>
							<span id="totstars"></span>
							 <a href="javascript:void(0);" style="font-size: 16px;"><span id="rviewer"></span>${rviewerCount} 명 회원 리뷰총점</a>
					</h2>
					<hr />
					<h3 class="price-container" style="font-weight: 900;">
						<span id="goods_price">${vo2.g_price }원 </span> <small style="font-weight: 700;">(*부가세포함)
							</small>
					</h3>
					<div class="certified">
						<ul>
							<li style="text-align: center; font-weight: 900;"><a href="javascript:void(0);">배송기간 <span>영업일 3일이내</span></a></li>
							<li style="text-align: center; font-weight: 900;"><a href="javascript:void(0);">품질보증기준<span>구입 후 1년 </span></a></li>
						</ul>
					</div>
					<hr />

					<div class="group-option">
						<!-- 컬러옵션 선택사항dfdfdfdf -->

						<div class="group-checkbox">
							<div>choose color:</div>
						<div>
						<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">		
								<c:choose>
									<c:when
										test="${ 1 == vo.c_num && '#FFFEF9' == vo.c_colorcode &&n==0  }">
										<c:set var="n" value="1">
										</c:set>
										<div class="one-checkbox skin-6" id="options">
											<label id="colorlabel"> <input type="checkbox"
												class="chk" id="chk1" value="WHITE"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
						</div>
						<div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 2 == vo.c_num && '#DEB887' == vo.c_colorcode &&n==0 }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk2"
												value="BEGIE"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>
							<div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 3 == vo.c_num && '#FCF16E' == vo.c_colorcode &&n==0  }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk3"
												value="YELLOW"> <i
												style="background-color: ${vo.c_colorcode}"></i> 
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>
							<div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 4 == vo.c_num && '#98FB98' == vo.c_colorcode &&n==0 }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk4"
												value="GREEN"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>
							<div>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 5 == vo.c_num && '#FFC0CB' == vo.c_colorcode &&n==0 }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk5"
												value="PINK"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>
							<div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 6 == vo.c_num && '#ED1941' == vo.c_colorcode &&n==0 }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk6"
												value="RED"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>
							<div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 7 == vo.c_num && '#AFB4DB' == vo.c_colorcode &&n==0 }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk7"
												value="PURPLE"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>
							<div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 8 == vo.c_num && '#4169E1' == vo.c_colorcode &&n==0  }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk8"
												value="BLUE"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 9 == vo.c_num && '#D3D7D4' == vo.c_colorcode &&n==0  }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk9"
												value="GRAY"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>	
							<div>	
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 10 == vo.c_num && '#003A6C' == vo.c_colorcode &&n==0  }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk10"
												value="NAVY"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>



							<div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 11 == vo.c_num && '#000000' == vo.c_colorcode &&n==0  }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk11"
												value="BLACK"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>
						
						<div>
							<c:set var="n" value="0"></c:set>
							<c:forEach var="vo" items="${vo }">
								<c:choose>
									<c:when
										test="${ 12 == vo.c_num && '#ffffff' == vo.c_colorcode &&n==0  }">
										<c:set var="n" value="1"></c:set>
										<div class="one-checkbox skin-6">
											<label> <input type="checkbox" class="chk" id="chk12"
												value="단품"> <i
												style="background-color: ${vo.c_colorcode}"></i>
												 <span class="goodsnum">${vo.g_num}</span>
												<span>${vo.c_subnum}</span>
											</label>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>
							</div>



						</div>


						<!-- 사이즈 옵션 사항 -->

						<div class="group-checkbox">
						
							<div>choose size:</div>
						<div class="size-group" >
						
						</div>
						</div>
					
						<!-- / One checkbox group skin-7 -->
						
					</div>
							<div class="col-sm-12 col-md-6 col-lg-6" style="position:relative; float:right;">
							<!-- <a href="javascript:void(0);" class="btn btn-success btn-lg">Add to cart ($129.54)</a> -->
								<div class="SelectOption" id="SelectOption" style="border-radius: 9999em;"></div>
					<a class="btn btn-success btn-lg" id="gotoAddList">Add to
								cart(<span id='goods_totprice2'></span>)
							</a>
							

						</div>
					<div class="description description-tabs">
						<ul id="myTab" class="nav nav-pills">
							<li class="active"><a href="#more-information"
								data-toggle="tab" class="no-margin">상품 내용</a></li>
							<li class=""><a href="#specifications" data-toggle="tab">취소/교환/반품 안내</a></li>
							<li class=""><a href="#reviews" data-toggle="tab" class="sendContents">리뷰후기</a><span style="display: none;">${id }</span><span style="display: none;" class="fgnum   ">${vo2.g_num }</span></li>
							
						</ul>
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane fade active in" id="more-information">
								<br /> <strong>Description Title</strong>
								<p>Integer egestas, orci id condimentum eleifend, nibh nisi
									pulvinar eros, vitae ornare massa neque ut orci. Nam aliquet
									lectus sed odio eleifend, at iaculis dolor egestas. Nunc 
									elementum pellentesque augue sodales porta. Etiam aliquet
									rutrum turpis, feugiat sodales ipsum consectetur nec.</p>
							</div>
							<div class="tab-pane fade" id="specifications" style="font-weight: 900;">
								<br />
								<dl class="">
									<dt>취소</dt>
									<dd>입금하신 상품은 '입금대기, 입금완료' 단계에서만 취소가 가능합니다.</dd>
									<dd>전체 주문 중 일부 상품의 부분취소는 불가능합니다.</dd>
				
									<br />

									<dt>교환/반품</dt>
									<dd>교환 및 반품은 배송완료일 기준으로 7일 이내 가능합니다.</dd>
									<dd>교환하려는 상품은 처음 배송한 택배사에서 수거하므로 다른 택배사 이용은 불가능합니다.</dd>
									<dd>업체배송 상품은 제공 업체와 상품에 따라 배송비가 다르고, 상품의 도착지가 처음 발송한 주소와 다를 수 있으므로 고객센터(1004-1004)로 먼저 연락주시기 바랍니다.</dd>
									<br />

									<dt>교환/반품 배송비</dt>
									<dd>단순변심으로 인한 교환/반품은 고객님께서 배송비를 부담하셔야 합니다.</dd>
									<dd>상품의 불량 또는 파손, 오배송의 경우에는 배송비를 강아지대통령에서 부담합니다.</dd>
									<dd>업체배송 상품은 제공업체에 따라 교환/반품 배송비가 다를 수 있으므로 고객센터로 문의하시기 바랍니다.</dd>
									<dd>제주, 산간지역은 추가 배송비가 발생할 수 있습니다.</dd>
								</dl>
							</div>
							<div  style="display: none;" id="infostore">
							<span style="display: none;" id="m_id">${id}</span>
							</div>
									
							<div class="tab-pane fade" id="reviews">
							<a href="javascript:review(${pageNum })"></a>
								<br />
								<form method="post" enctype="multipart/form-data" class="well padding-bottom-10"
								id="uploadForm" name="uploadForm" action=""	 onsubmit="return false;" >
									<input class="form-control" id ="title" name="title" placeholder="Write a review" style="margin-bottom: 8px; "height= 5px; width="300px;">
									<textarea rows="2" class="form-control" name="content"  id="content"
										placeholder="Write a review" style="margin-bottom: 5px;"></textarea>
												<input type="file" class="form-control" name="file" id="file" style="display:none;">
											 <a href="javascript:void(0);"
											class="btn btn-link profile-link-btn" id="fClick" rel="tooltip"
											data-placement="bottom" title=""
											data-original-title="Add Photo" >
											<i class="fa fa-camera"></i></a>
										
										<button type="submit"
											class="btn btn-sm btn-primary pull-right" id="sendReview" style="z-index: 999999;">Submit
											Review</button>
										<div class="make_star"  style="position:relative; left: 10em; z-index: 1; width: 100px;">
										<div class="rating" data-rate="3">
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
											<i class="fas fa-star"></i>	
										</div>
										<span id="star_cnt" style="display: none;"></span>
									</div>
									<!--  
										<a href="javascript:void(0);"
											class="btn btn-link profile-link-btn" rel="tooltip"
											data-placement="bottom" title=""
											data-original-title="Add Location"><i
											class="fa fa-location-arrow"></i></a>
											
											 <a
											href="javascript:void(0);"
											class="btn btn-link profile-link-btn" rel="tooltip"
											data-placement="bottom" title=""
											data-original-title="Add Voice"><i
											class="fa fa-microphone"></i></a>
											*/
							
									
										
											
										<a href="javascript:void(0);"
											class="btn btn-link profile-link-btn" rel="tooltip"
											data-placement="bottom" title=""
											data-original-title="Add File"><i class="fa fa-file"></i></a>
									-->		
									
								</form>
							
								<div class="chat-body no-padding profile-message" id="message">
								
								
								
								
								<!--  
									<ul>
										<li class="message"><img
											src="https://bootdey.com/img/Content/avatar/avatar2.png"
											class="online" /> <span class="message-text"> <a
												href="javascript:void(0);" class="username"> Aragon
													Zarko <span class="badge">Purchase Verified</span> <span
													class="pull-right"> <i
														class="fa fa-star fa-2x text-primary"></i> <i
														class="fa fa-star fa-2x text-primary"></i> <i
														class="fa fa-star fa-2x text-primary"></i> <i
														class="fa fa-star fa-2x text-primary"></i> <i
														class="fa fa-star fa-2x text-primary"></i>
												</span>
											</a> Excellent product, love it!
										</span>
											<ul class="list-inline font-xs">
												<li><a href="javascript:void(0);" class="text-info"><i
														class="fa fa-thumbs-up"></i> This was helpful (22)</a></li>
												<li class="pull-right"><small
													class="text-muted pull-right ultra-light"> Posted 1
														year ago </small></li>
											</ul></li>
									</ul>
								-->
								</div>
							 <div id="page" style="text-align: center;"></div>
							</div>
						</div>
					</div>
					<hr />
					<div class="row">
				
					</div>
				</div>
			</div>
			<div
				style="margin-left: 30%; margin-top: 30px; padding-bottom: 30px; position: relative;">
				<img
					src="${pageContext.request.contextPath}/resources/img/goods/${vo3.gd_saveimg3}">

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
		
	var star ="";
		$(document).ready(function() {
			
		var stars_num=	parseInt($("#stars_avg").text());
		for(let i=0; i<stars_num; i++){
			
			star += "<i class='fa fa-star fa-2x text-primary'></i>";
			console.log(star);

		}
		console.log(stars_num+"별점수")
			$("#totstars").html(star);
			
		});


	
		$(document).on('click','.sendContents', function() {
			list();
			var idname =  $(this).next().text();
			 var fg_num = $(this).next().next().text();
				console.log(idname);
				console.log(fg_num);
				  $(".form-control").attr("disabled",true);
				//  $(".btn btn-link profile-link-btn").attr("disabled",true);
			if(idname=='anonymousUser'){
				alert("로그인후 이용해주시길 바랍니다.")
				if(confirm("로그인페이지로 이동하시겠습니까?")==true) {
					location.href="${pageContext.request.contextPath}/login/login";
				}else{
					return false;
				}
				
			
			
			}else{	
				//만약 이사람이 회원인데  결제한 사람인지아닌지 구분위해서 컨트롤로에 보내서 구분한다 일단 
				//찬영이한테 마이페이지 구매내역 자기상품페이지로갈수있는지물어보기
		
				$.ajax({
					url: "${pageContext.request.contextPath}/shop/abailityReview",
					data: {
						"id":idname,
						"g_num":fg_num,
					},
					dataType: "json",
					success: function(data) {
						console.log(data.p_num+":p_num");
						console.log(data.ol_num+":ol_num");
						if(data.result=='success'){
							  $(".form-control").attr("disabled",false);
							  $(".btn btn-link profile-link-btn").attr("disabled",false);
							  alert("상품을 구매하셨군요 리뷰작성부탁드릴게요!")
								let html =`
									<span style="display:none" id="p_num">`+data.p_num+`</span>
									<span style="display:none" id="ol_num">`+data.ol_num+`</span>
									`;
							
								$("#infostore").append(html);
						}
						

					}
					
				});
				
				
				
			}
		
		});
	
		
		
		
		$("#fClick").click(()=>{
	
			$("#file").click();
			
		});
			
			$(document).on('click','.make_star svg',function() {
				var targetNum = $(this).index()+1;
				$('.make_star svg').css({color:' #718795'});
				$('.make_star svg:nth-child(-n+'+targetNum+')').css({color:'#eed953'});
				console.log(targetNum);
				$("#star_cnt").append(targetNum);
				
				
			});
			
		

		
		
		
		
	$(document).on('click','#sendReview',function(){
		//$(document).on('submit', '[name="uploadForm"]', function(e){
			event.preventDefault();
			
		var t1 = $("input[name=title]").val();
		var t2 =$("textarea[name=content]").val();
		var file =$("input[name=file]")[0].files[0];	
		console.log(t1+":t1");
		console.log(t2+":t2");
		console.log(file+":file");

			
			var formData = new FormData($('#uploadForm')[0]);
			var formData = new FormData();
			formData.append("title",$("input[name=title]").val());
			formData.append("content",$("textarea[name=content]").val());
			formData.append("file",$("input[name=file]")[0].files[0]);
			formData.append("m_id",$("#m_id").text());
			formData.append("p_num",$("#p_num").text());
		//	formData.append("ol_num",$("#ol_num").text());
			formData.append("star_cnt",$("#star_cnt").text());
			
		    $('#sendReview').prop('disabled', true);
			$.ajax({
				url: "${pageContext.request.contextPath}/shop/reviewUpload",
				//data:JSON.stringify(formData),
				type:"POST",
				data:formData,
 				enctype: 'multipart/form-data',
				processData:false,
				contentType:false,
 				dataType:"json",
				timeout: 600000,
				success: function(data) {
					if(data.result=='success'){	
					alert('리뷰를 작성해주셔서 감사합니다.')
					$('#sendReview').prop('disabled', false);			
					}else{
						$('#sendReview').prop('disabled', false);	
						alert('fail')
						
					}
					$("#content").val("");
					$("#title").val("");
					$("#message").empty();
					$(".make_star svg").css({color:' #718795'});
					$("#star_cnt").			
					$("#message").append(html);
					$("#totstars").html(totstar);
					list();
		
				}
			});
			location.reload();
		});

		
	
	
	//해당하는 상품결제한사람의 리스트만 뿌려하는데 
	//select * from reviewboard 
	
		
	
	
	
	let tot_star =0;
	let tot_starcal =0;
	let tot_reviewer =0;
		function list(pageNum) {
			$("#page").empty();
			$("#message").empty();
			/* if(pageNum==undefined){
				pageNum=1;
			} */
				//console.log(pageNum+"page");
		
			let getGnum = parseInt($(".goodsnum").text());
		//	console.log(pageNum+"pageNum null값이겟지");
			console.log(getGnum+"상품번호얻어와서 리뷰리스트얻어올거임");
			$.ajax({
				url: "${pageContext.request.contextPath}/shop/reviewList",  
				data: {"g_num":getGnum,"pageNum":pageNum},
				dataType:"json",
				success: function(data) {
						console.log(data+"data받아옴")	
					if(data.result=='success'){
							$(data.list).each(function(i,d) {
							/*
								private String m_id;
								private String rb_title;
								private String rb_content;
								private String rb_stars;
								private String rb_saveimg;
							*/ 
								var m_id = d.m_id;
								var rb_num = d.rb_num;
								var rb_title = d.rb_title;
								var rb_content = d.rb_content;
								let rb_stars = parseInt(d.rb_stars);
								var rb_saveimg = d.rb_saveimg;
								var rb_date = d.rb_date;
								var g_name = d.g_name;
								var c_colorname = d.c_colorname;
								var sz_sizename = d.sz_sizename;
								var rp_content = d.rp_content;
								
								 tot_star += rb_stars;
								console.log(tot_star+"별이계속더해질까?")
								console.log(Math.round(tot_star/(i+1))+"토탈별총점이나올까")
								
								 tot_starcal = Math.round(tot_star/(i+1));
								tot_reviewer = (i+1);
								 console.log(tot_reviewer+"리뷰단사람 총수나올까?????")
								//var id ="admin"
								 console.log(c_colorname)
								 console.log(sz_sizename)
								console.log(rb_title)
								console.log(rb_stars+"별길이")
								console.log(rp_content+"관리자답글들넘어옴")
								var star="";
								 var totstar="";
								var reply="";
								for(let i=0; i<rb_stars; i++){
									star += "<i class='fa fa-star fa-2x text-primary'></i>";
									console.log(star);
								}
								for(let i=0; i<tot_starcal; i++){
									totstar += "<i class='fa fa-star fa-2x text-primary'></i>";
									console.log(totstar+"토트스타평점");
								}
								
								if(rp_content == null){
									rp_content = "";	
								}else{
									
									rp_content = "<i>관리자답글:→</i>"+d.rp_content;
								}
								
								
								let html = `<ul>
									<li class="message"><img
									src="${pageContext.request.contextPath}/resources/img/goods/`+ rb_saveimg +`"
									class="online" /> <span class="message-text"> <a
										href="javascript:void(0);" class="username">`+m_id+` <span class="badge">`+rb_title+`</span>
											<span class="pull-right">`+ star +`</span>
									</a> `+ rb_content +`</span>	<ul class="list-inline font-xs">		
									<li><a href="javascript:void(0);" class="text-info"><i
									class="fa fa-thumbs-up"></i><span>상품명:`+g_name+`/</span><span>컬러:`+c_colorname+`/</span>사이즈:(`+sz_sizename +`)</span></a></li>
										<li class="pull-right"><small class="text-muted pull-right ultra-light">`+rb_date+`</small></li>
									</ul></li><span id="rp_contents"></span><div class="replybox"><span style="display:none;"id="rb_num" >`+rb_num+`</span><span class="replyclick">`+rp_content+`</span></div>
							</ul>
							`; 
							
								$("#message").append(html);
							//	$("#totstars").html(totstar);
							//	$("#rviewer").html(tot_reviewer)
								
							});
						
							let startPageNum = data.pu.startPageNum;
							let endPageNum= data.pu.endPageNum;
							let startRow = data.pu.startRow;
							let endRow = data.pu.endRow;
							let pageNum = data.pu.pageNum;
							console.log(startPageNum);
							var str="";
							if(startPageNum>5){
								str +="<a href='javascript:review("+(startPageNum-1)+")'>이전</a>";
							}
							for(let i=startPageNum;i<=endPageNum;i++){
								if(pageNum==i){
									str = str +"<a href = 'javascript:list("+i+")' >" +"<span style='color:black;'>"+[i] +"</span>"+"</a>";
								}else{
									str = str +"<a href = 'javascript:list("+i+")'>" +"<span style='color:gray;'>"+[i] +"</span>"+"</a>";
									
								}
							}
							if(endPageNum<data.pu.totalPageCount){
								str +="<a href='javascript:review("+(endPageNum+1)+")'>다음</a>";
							}
							$("#page").append(str);
								
						}
					
				}	
				});
			
		}	
			


	
	
		$(document).on('click','.recommentSend', function() {
			var rp_content=   $(this).prev().val();
			let rb_num  =$(this).parent().prev().prev().text();
				console.log(rp_content);
				console.log(rb_num);	
			var find_rp_contents = $(this).parent().parent().prev();
			var find_replybox =$(this).parent().parent();
			
			console.log(find_rp_contents+"rp_contents")
			console.log(find_replybox+":replybox")
			 $.ajax({
					url:"${pageContext.request.contextPath}/shop/reviewReply",
					dataType:"json",
					data:{"rp_content":rp_content,"rb_num":rb_num },
					success: function(data) {
						if(data.result=='success'){
							$(find_replybox).remove();
						
						$(data.list).each(function(i,d) {
							
							var rp_content = d.rp_content;

							let html = `<div> → `+rp_content+`</div>`;
							
							$(find_rp_contents).append(html);
						});
					
					
						
						
						
						}
					}
					
			 });
			 
			 
			 
			 
			
		});
				
			
		
		
		
		
			
		/*			
		
					<ul>
										<li class="message"><img
											src="https://bootdey.com/img/Content/avatar/avatar2.png"
											class="online" /> <span class="message-text"> <a
												href="javascript:void(0);" class="username"> Aragon
													Zarko <span class="badge">Purchase Verified</span> <span
													class="pull-right"> <i
														class="fa fa-star fa-2x text-primary"></i> <i
														class="fa fa-star fa-2x text-primary"></i> <i
														class="fa fa-star fa-2x text-primary"></i> <i
														class="fa fa-star fa-2x text-primary"></i> <i
														class="fa fa-star fa-2x text-primary"></i>
												</span>
											</a> Excellent product, love it!
										</span>
											<ul class="list-inline font-xs">
												<li><a href="javascript:void(0);" class="text-info"><i
														class="fa fa-thumbs-up"></i> This was helpful (22)</a></li>
												<li class="pull-right"><small
													class="text-muted pull-right ultra-light"> Posted 1
														year ago </small></li>
											</ul></li>
									</ul>
		
		*/
	
	
	

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
		let num =0;
		let gcs_num =0;
		var c_subnumArray = new Array();
	
		var sz_ssubnumArray = new Array();
		for(let i=1;i<13;i++){
			//gcs_numArray = new Array;
		
			
			$('#chk'+i).click(function(){ 
				 $('.one-checkbox.skin-7').remove();	
			
			4+98.		
				//		var test= $(this).parents('.group-option');
			//	var sizetest = $(test).find('#sizecheck').html();
			//	console.log("사이즈테스트"+sizetest);
				
				//let a = $(this).val();
				//alert(a);
			let itsArea = $(this).parent().children();
			let g_num= itsArea.eq(2).html();
			let c_subnum = itsArea.eq(3).html();
			c_subnumArray.push(c_subnum)
			//gcs_numArray.push(gsc_num);
			console.log(g_num);
			console.log("컬러서브넘"+c_subnum);
			
			$.ajax({
				url:"${pageContext.request.contextPath}/shop/checkColor",
				data:  {"g_num":g_num,"c_subnum":c_subnum}, 
				dataType:"json",
				success: function(data) {
					console.log(data);
					
					if(data.result=='success'){
					$(data.list).each(function(i,d) {
						let sz_snum = d.sz_snum;
						let sz_sizename = d.sz_sizename;
						let sz_ssubnum = d.sz_ssubnum;
						let g_ea = d.g_ea;
						 gcs_num =d.gcs_num;
						console.log("gcs_num넘어옴"+gcs_num)
						sz_ssubnumArray.push(sz_ssubnum)
	
						console.log("사이즈서브넘버"+sz_ssubnum)
									let html =`<div class="one-checkbox skin-7" id="div1">
											<label> <input type="checkbox" class="schk"
												id="schk`+i+`" value="`+sz_sizename+`"> <i>` + sz_sizename + `</i>
												</label>
										</div>
										<span id="gea1" style="position: relative; top:10px; color:green; border:3px; font-weight:600;">재고수량:`+g_ea+`</span>
											<span style="display:none">`+sz_ssubnum+`</span>
											`;
									
						$(".size-group").append(html);													
						});			
					}
				}
			});

				if($(this).prop("checked")==true){
					$(".chk").prop("checked",false);
					$(this).prop("checked",true);
					console.log($(this));
					chkVal= $(this).val();
					console.log(chkVal)
					if(chkVal!=""&&schkVal!=""){
							num++;
						var Number = "<div class='Bselects'><span class='selectColor'>"+chkVal+"</span><span class='selectSize'>"+schkVal+"</span><br><input type='number' onchange=\"calc('amount"+num+"')\" id='amount"+num+"' class='amount' min=1 value=1><span></span></div></div>";
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

		for(let i=0;i<4;i++){
			$(document).on('click','#schk'+i,function(){
			 $('.one-checkbox.skin-7').remove();
			 $('#gea1').remove();
				console.log($("#schk"+i))
				if($(this).prop("checked")==true){
					$(".schk").prop("checked",false);
					$(this).prop("checked",true);
					schkVal= $(this).val();
					console.log(schkVal);
					if(chkVal!=""&&schkVal!=""){
						var che1 =	$('.selectColor').html();
						var che2 =	$('.selectSize').html();
						console.log("Selcoption값들cehck"+che1)
						console.log("Selcoption값들cehck"+che2)
						if(chkVal==che1 && schkVal==che2){
							alert("이미 선택한옵션입니다");
							$("#SelectOption").append(Number);
							$(".chk").prop("checked",false);
							$(".schk").prop("checked",false);		
							chkVal="";
							schkVal="";	                
						}else{
					
						num++;						
						var Number = "<div class='Bselects'>컬러:<span class='selectColor'>"+chkVal+"</span>사이즈:<span class='selectSize'>"+schkVal+"</span><br><input type='number' onchange=\"calc('amount"+num+"')\" id='amount"+num+"' class='amount' min=1 value=1><span class='goods_totprice'></span>원</div>";
						$("#SelectOption").append(Number);
						$(".chk").prop("checked",false);
						$(".schk").prop("checked",false);		
						chkVal="";
						schkVal="";	                          
						calc("amount"+num);		
					}
					
					}
						
					
				}				
		
			});
		}
	
		var cnt = 0;
		var tot2 = 0;
		function calc(idx) {
		var price=parseInt($("#goods_price").text());
		console.log("상품가격"+price)
		 cnt =parseInt($("#"+idx).val());
			console.log("수량"+cnt)
		var tot=$("#"+idx).next().html(cnt*price);
			console.log("상품수량금액"+tot)
			 tot2 = 0;	
			$(".goods_totprice").each(function() {
				nodess=$(this).length;
				console.log(nodess)
				console.log($(this).text())
				
				tot2+=parseInt($(this).text());		
			});
				
			console.log("해당상품수량총가격"+tot2);
		
			
			$("#goods_totprice2").html(tot2);	
		}		
		
		
	
		$(document).on('click','#gotoAddList',function() {
			var c_colornameArray = new Array;
			var sz_sizenameArray = new Array;
			var amountsArray = new Array;
			var priceArray = new Array;
			var gcs_numArray = new Array;
			 //$(".bigSelects").attr("id");
			var nodes = $("#SelectOption").children();
			
			console.log(nodes.length);
			//var sz_sizenameArray = new Array;
		//	var color ="";
			//var color= $("#selects span.selectColor").val();
		//	let tot2 =0;
		
			
			
			nodes.each(function() {
	//			color+=""+$(this).children().eq(0).html();
			c_colornameArray.push($(this).children().eq(0).html());	
			sz_sizenameArray.push($(this).children().eq(1).html());
			amountsArray.push($(this).children().eq(3).val());
			priceArray.push($(this).children().eq(4).html());

		
			//	console.log("컬러"+_colornameArray);		


			//	tot2+=parseInt($(this).children().eq(3).html());
			//	console.log("컬러"+_colornameArray);		

//github.com/MOA-LMY/finalproject.git
				//var color= $("#selects span.selectColor").html();
				//c_colornameArray.push();
				
			//	color = $(this).children().eq(0).html();	
			//	console.log("컬러"+color);
			//	c_colornameArray.push(color);	
	
				
	
				//	sz_sizenameArray.push($(this).children().eq(1).html());
				
			//	console.log("클릭사이즈"+sz_sizenameArray);
			//	location.href = "${pageContext.request.contextPath}/shop/add_to_cart_list?g_num="+${vo2.g_num}+"&"+c_colorname+"&"+sz_sizename;
			});
			
			console.log(c_colornameArray);
			console.log(sz_sizenameArray);
			console.log(amountsArray);
			console.log(priceArray);
			//console.log(bk_ea);
			//var size = $("#selects span.selectSize").val();
			
			let colors ="";
			for(let i=0;i<c_colornameArray.length;i++){
				if(i!=c_colornameArray.length-1){
					colors += "color="+ c_colornameArray[i] +"&";
						
				}else{
					colors += "color="+ c_colornameArray[i]+"&";
				}

			}
			let sizes ="";
			for(let i=0;i<sz_sizenameArray.length;i++){
				if(i!=c_colornameArray.length-1){
					sizes += "size="+ sz_sizenameArray[i] +"&";
					
				}else{
					sizes += "size="+ sz_sizenameArray[i]+"&";
				}

			}
			let counts ="";
			for(let i=0;i<amountsArray.length;i++){
				if(i!=amountsArray.length-1){
					counts += "count="+ amountsArray[i] +"&";
						
				}else{
					counts += "count="+ amountsArray[i]+"&";
				}

			}
			
			let prices ="";
			for(let i=0;i<priceArray.length;i++){
				if(i!=priceArray.length-1){
					prices += "price="+ priceArray[i] +"&";
						
				}else{
					prices += "price="+ priceArray[i]+"&";
				}

			}
			
	
			let c_subnums ="";
			for(let i=0;i<c_subnumArray.length;i++){
				if(i!=c_subnumArray.length-1){
					c_subnums += "c_subnum="+ c_subnumArray[i]+"&";
						
				}else{
					c_subnums += "c_subnum="+ c_subnumArray[i]+ "&";
				}

			}
	
			let sz_ssubnums ="";
			for(let i=0;i<sz_ssubnumArray.length;i++){
				if(i!=sz_ssubnumArray.length-1){
					sz_ssubnums += "sz_ssubnum="+ sz_ssubnumArray[i]+"&";
						
				}else{
					sz_ssubnums += "sz_ssubnum="+ sz_ssubnumArray[i]+ "&";
				}

			}
			console.log(tot2)
			console.log("c넘"+c_subnums)
			console.log("s넘"+sz_ssubnums)
		console.log("gcs_num넘어옴2"+gcs_num)
		location.href = "${pageContext.request.contextPath}/shop/add_to_cart_lists?"+colors+sizes+counts+prices+c_subnums+sz_ssubnums+"bs_price="+tot2+"&g_num="+${vo2.g_num}+"&g_saveimg=${vo2.g_saveimg}&gcs_num="+gcs_num;
		//location.href = "${pageContext.request.contextPath}/shop/add_to_cart_list?g_num="+g_num;
		});

</script>	
		
		
</body>
</html>