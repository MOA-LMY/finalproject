
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

<style type="text/css">

a:link{text-decoration: none; color:#5ff7d2;}
a:visited{text-decoration: none; color:#5ff7d2;}
a:active{text-decoration: none; color:#5ff7d2;}
a:hover{text-decoration: none; color:#5ff7d2;}

</style>
<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>  -->
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
<!-- 
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/_goods_detail/responsive.css">
 -->
<!-- 메인굿즈 css링크 부분 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/maingoods.css">

 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css_goods_detail/goods_detail.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<%-- <script src="${pageContext.request.contextPath}/resources/js/goods_detail.js"></script> --%>

<script type="text/javascript">

$(document).ready(function(){
	
	
	/* 라지 그리드 뷰 부분  */
	$(".largeGrid").click(function(){											
    $(this).find('a').addClass('active');
    $('.smallGrid a').removeClass('active');
    
    $('.product').addClass('large').each(function(){											
		});			
    
		setTimeout(function(){
			$('.info-large').show();	
		}, 200);
							
		return false;				
	}); 
	
	/* 스몰 그리드 뷰 부분  */
	$(".smallGrid").click(function(){		        
    $(this).find('a').addClass('active');
    $('.largeGrid a').removeClass('active');
    
		$('div.product').removeClass('large');
		$(".make3D").removeClass('animate');	
    $('.info-large').fadeOut("fast");
		setTimeout(function(){								
				$('div.flip-back').trigger("click");
		}, 400);
		return false;
	});		
	
	$(".smallGrid").click(function(){
		$('.product').removeClass('large');			
		return false;
	});
  
  $('.colors-large a').click(function(){return false;});
	
  // 동적 이벤트 시작 
  
  $(document).on("mouseover",".product", function(){
	
	  console.log("동적이벤트 ");
	  $('.product').each(function(i, el){					
			
		  
			// 마우스 이벤트 처리 부분 
			$(el).find('.make3D').hover(function(){
				
					console.log("asd");
					$(this).parent().css('z-index', "20");
					$(this).addClass('animate');
					$(this).find('div.carouselNext, div.carouselPrev').addClass('visible');		
					
				 }, function(){
					 
					$(this).removeClass('animate');			
					$(this).parent().css('z-index', "1");
					$(this).find('div.carouselNext, div.carouselPrev').removeClass('visible');
		
				 });	
			

		});
	  
  }); // 동적 이벤트 끝 

  
  $(document).on("click",".add_to_cart", function(){

		var productCard = $(this).parent();
		console.log(productCard);
		var position = productCard.offset();
		console.log(position);
		var productImage = $(productCard).find('img').get(0).src;
		var productName = $(productCard).find('.product_name').get(0).innerHTML;				
		var productPrice = $(productCard).find('.product_price').get(0).innerHTML;
		var productNum = $(productCard).find('.product_num').get(0).innerHTML;
		console.log(productNum);
		$("body").append('<div class="floating-cart"></div>');		
		var cart = $('div.floating-cart');		
		productCard.clone().appendTo(cart);
		$(cart).css({'top' : position.top + 'px', "left" : position.left + 'px'}).fadeIn("slow").addClass('moveToCart');		
		setTimeout(function(){$("body").addClass("MakeFloatingCart");}, 800);
		setTimeout(function(){
			$('div.floating-cart').remove();
			$("body").removeClass("MakeFloatingCart");


			var cartItem = "<div class='cart-item'><div class='img-wrap'><img src='"+productImage+"' alt='' /></div><span>"+productName+"</span><strong>"+productPrice+"</strong> <span id=`p_num` style='display:none;'>"+productNum+"</span> <div class='cart-item-border'></div><div class='delete-item'></div></div>";			

			$("#cart .empty").hide();			
			$("#cart").append(cartItem);
			$("#checkout").fadeIn(500);
			
			$("#cart .cart-item").last()
				.addClass("flash")
				.find(".delete-item").click(function(){
					$(this).parent().fadeOut(300, function(){
						$(this).remove();
						if($("#cart .cart-item").size() == 0){
							$("#cart .empty").fadeIn(500);
							$("#checkout").fadeOut(500);
						}
					})
				});
		    setTimeout(function(){
				$("#cart .cart-item").last().removeClass("flash");
			}, 10 );
			
		}, 1000);
	});
  	
  	$(document).on("click","#checkout",function(){
  		
  		var p_numarray  =  new Array();
  		var p_num; 
  		
	$(".cart-item").each(function () { //자식 텍스트 불러오기 
			
			p_num = $(this).children().eq(3).html();
			console.log(p_num);
			p_numarray.push(p_num);
		
		}); 
	
/* 	var objParams={
			"p_numarray": p_numarray
	}; */
	
	/* console.log("ps_num  길이:"+ ps_num.length);
	for(let i=0; i<ps_num.length; i++){
		console.log("ps_num"+i+"번째"+ ps_num[i]);
		
	} */

		$.ajax({
			url:"${pageContext.request.contextPath}/shop/cart",
			data:{"p_numarray":p_numarray},
			dataType:"json",
			success:function(data){
				
				if(data.result =='success'){
					alert("성공");
				}
			}

		});
  	});

	$(".categories ul li").each(function(i,el){
		
		$(el).on('click',function(){
			
		$("#grid").empty(); 
		
		let gc_num = i+1; 
		console.log(gc_num);
		
		$.ajax({
			
			url:"${pageContext.request.contextPath}/shop/goods_detail/cg",
			data:{"gc_num": gc_num},
			type:"post",
			dataType:"json",
			success:function(data){
				
				$(data.list).each(function(i,d){
					
					let g_num = d.g_num; 
					let g_name = d.g_name; 
					let g_price = d.g_price; 
					let g_saveimg = d.g_saveimg; 
					let g_info = d.g_info; 
					console.log(g_saveimg)
					console.log(g_num+""+g_price);	
					
					let html = 

						` 
						 <div class="product">
						    	
						        <div class="make3D">
						            <div class="product-front">
						                <div class="shadow"></div>
						                <img src="${pageContext.request.contextPath}/resources/img/goods/`+ g_saveimg + `" alt="" />
						                <div class="image_overlay"></div>
						                <div class="add_to_cart">Add to cart</div>
						                <div class="view_gallery" >View gallery</div>
						                <div class="go_to_detail" onclick="GoDetail(`+g_num+`)">Go to detail</div>             
						                <div class="stats">        
						                    <div class="stats-container">
						                        <span class="product_price">$`+g_price+`</span>
						                        <span class="product_name">` + g_name + ` </span>    
						                        <span class="product_num" style="display:none;">`+g_num+`</span>
						                        <p>`+ g_info +`</p>                                            
						                        
						                        <div class="product-options">
						                        <strong>SIZES</strong>
						                        <span>XS, S, M, L, XL, XXL</span>
						                        <strong>COLORS</strong>
						                        <div class="colors">
						                            <div class="c-blue"><span></span></div>
						                            <div class="c-red"><span></span></div>
						                            <div class="c-white"><span></span></div>
						                            <div class="c-green"><span></span></div>
						                        </div>
						                    </div>                       
						                    </div>                         
						                </div>
						            </div>
						            
						            <div class="product-back">
						                <div class="shadow"></div>
						                <div class="carousel">
						                    <ul class="carousel-container">
						                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/1.jpg" alt="" /></li>
						                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/2.jpg" alt="" /></li>
						                        <li><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/3.jpg" alt="" /></li>
						                    </ul>
						                    <div class="arrows-perspective">
						                        <div class="carouselPrev">
						                            <div class="y"></div>
						                            <div class="x"></div>
						                        </div>
						                        <div class="carouselNext">
						                            <div class="y"></div>
						                            <div class="x"></div>
						                        </div>
						                    </div>
						                </div>
						                <div class="flip-back">
						                    <div class="cy"></div>
						                    <div class="cx"></div>
						                </div>
						            </div>	  
						        </div>	
						    </div>
                       
					                </div>
					            </div>
					              
					        </div>	
					    </div>
						`
						; 
					$("#grid").append(html);
				});
				}	
			});
		});
		
	});
});

</script>

</head>

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

<div id="wrapper">
<div class="cart-icon-top">
</div>

<div class="cart-icon-bottom">
</div>

<div id="checkout">
	<a href="#">ADD</a>
</div>

<div id="order">
	ORDER
</div>

<div id="sidebar">
	<h3>장바구니</h3>
    <div id="cart">
    	<span class="empty">비어 있습니다.</span>       
    </div>
    
    <h3>CATEGORIES</h3>
    
    <div class="checklist categories">
    	<ul>
  	 <c:forEach var="vo" items="${goodscategorylist}">
    	
    	  <li><a href="#">${vo.gc_name}</a></li>

    	</c:forEach>  
    	

        </ul>
    </div>
    
    <h3>COLORS</h3>
    <div class="checklist colors">
    	<ul>
        	<li><a href=""><span></span>Beige</a></li>
            <li><a href=""><span style="background:#222"></span>Black</a></li>
            <li><a href=""><span style="background:#6e8cd5"></span>Blue</a></li>
            <li><a href=""><span style="background:#f56060"></span>Brown</a></li>
            <li><a href=""><span style="background:#44c28d"></span>Green</a></li>
        </ul>
        
        <ul>
        	<li><a href=""><span style="background:#999"></span>Grsey</a></li>
            <li><a href=""><span style="background:#f79858"></span>Orange</a></li>
            <li><a href=""><span style="background:#b27ef8"></span>Purple</a></li>
            <li><a href=""><span style="background:#f56060"></span>Red</a></li>
            <li><a href=""><span style="background:#fff;border: 1px solid #e8e9eb;width:13px;height:13px;"></span>White</a></li>
        </ul>        
    </div>
    
    <h3>SIZES</h3>
    <div class="checklist sizes">
    	<ul>
        	<li><a href=""><span></span>XS</a></li>
            <li><a href=""><span></span>S</a></li>
            <li><a href=""><span></span>M</a></li>
        </ul>
        
        <ul>
        	<li><a href=""><span></span>L</a></li>
            <li><a href=""><span></span>XL</a></li>
            <li><a href=""><span></span>XXL</a></li>
        </ul>        
    </div>
    
     <h3>PRICE RANGE</h3>
     <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/price-range.png" alt="" />
</div>

<div id="grid-selector">
       <div id="grid-menu">
       	   View:
           <ul>           	   
               <li class="largeGrid"><a href=""></a></li>
               <li class="smallGrid"><a class="active" href=""></a></li>
           </ul>
       </div>
       
       Showing 1009 of 48 results 여기 수정 할것 
</div>

<div id="grid">

<c:forEach var="vo" items="${goodslist}">

 <div class="product" >
    	
        <div class="make3D">
            <div class="product-front">
            	<div class="g_num" id="${vo.g_num}"></div>
                <div class="shadow"></div>
                <img src="${pageContext.request.contextPath}/resources/img/goods/${vo.g_saveimg}" alt="" />
                <div class="image_overlay"></div>
                <div class="add_to_cart">Add to cart</div>

                 <div class="view_gallery" onclick="Gogolley(${vo.g_num})">View gallery</div>
  
                <div class="go_to_detail" onclick="GoDetail(${vo.g_num})">Go to detail</div>     

                <div class="stats">        	
                    <div class="stats-container">
                        <span class="product_price">$${vo.g_price}</span>
                        <span class="product_name">${vo.g_name}</span>    
                        <span class="product_num" style="display:none;">${vo.g_num}</span>
                        <p>${vo.g_info}</p>                                            
                        
                        <div class="product-options">
                        <strong>SIZES</strong>
                        <span>XS, S, M, L, XL, XXL</span>
                        <strong>COLORS</strong>
                        <div class="colors">
                            <div class="c-blue"><span></span></div>
                            <div class="c-red"><span></span></div>
                            <div class="c-white"><span></span></div>
                            <div class="c-green"><span></span></div>
                        </div>
                    </div>                       
                    </div>                         
                </div>
                </div>
              
        </div>	
    </div>
    
</c:forEach>
   
 
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
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.popup.lightbox.js"></script>
		
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
		function GoDetail(g_num){
			console.log(g_num)
			location.href = "${pageContext.request.contextPath}/shop/gotodetail2?g_num="+g_num;

		}
		function Gogolley(g_num){
			console.log(g_num)
			
			$(".img-container").popupLightbox({
				width : 600,
				height : 450
				
			});
		
			
		}

		
	</script>
</body>

</html>