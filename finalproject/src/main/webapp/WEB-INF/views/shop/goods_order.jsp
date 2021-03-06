
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.active{
	
	/* border: solid 1px #D3D7D4; */
	 border: solid 2px #FF1493;
	}
#colors .active{
 border: solid 2px #FF1493;
}

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
	<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/goods_detail.css"> --%>
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/goods_order.css">
	


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_orderlist/add_to_order_list.css">
<!-- 
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/css_goods_detail/_goods_detail/responsive.css">
 -->
<!-- ???????????? css?????? ?????? -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/maingoods.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>



<script type="text/javascript">

function mysize(g_num){
	
	  $(document).on('click','#sizes',function(){
		  
		  $(".h5.text-primary.sizes .active").removeClass('active');
		  $(this).addClass('active');
		 
		  let size = $(this).html();
			//alert(size);
			//alert("g_num : "+g_num);
				var part = $(this).parents('#chofpa');
				var colors = $(part).find("div.colors"); 
			
	  $.ajax({
			
		url:"${pageContext.request.contextPath}/shop/color",
	
		data:{"sz_ssubname":size,"g_num":g_num},
			
		dataType:"json",

		success:function(data){

			 $(colors).empty(); 
			 
				$(data.colorlist).each(function(i,d){
					
					let color = d.c_subnum;
					
					if(color == "1"){
						
						let html =`<div id="colors" class="c-white">
							<span id="1" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="2"){
						let html =`<div id="colors" class="c-beige">
							<span id="2" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="3"){
						let html =`<div id="colors" class="c-yellow">
							<span id="3" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="4"){
						let html =`<div id="colors" class="c-green">
							<span id="4" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="5"){
						let html =`<div id="colors" class="c-pink">
							<span id="5" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="6"){
						let html =`<div id="colors" class="c-red">
							<span id="6" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="7"){
						let html =`<div id="colors" class="c-pupple">
							<span id="7" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="8"){
						let html =`<div  id="colors" class="c-blue">
							<span id="8" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="9"){
						let html =`<div id="colors" class="c-grey">
							<span id="9" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="10"){
						let html =`<div id="colors" class="c-navy">
							<span id="10" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="11"){
						let html =`<div id="colors" class="c-black">
							<span id="11" onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}

					console.log("????????? ????????? : "+color);
					
					});		 
			  }
		   });
		});
}

function mycolor(){
	
	  $(document).on('click','#colors',function(){
		  
		  var part = $(this).parents('#chofpa');
			var colors = $(part).find(".d-flex.flex-column.px-3 .colors #colors span"); 
			
		  $(colors).removeClass('active');
		  
		  $(this).children("span").addClass('active');
		  
		  })
}

$(document).on('click','#save',function(){
	
	var part = $(this).parents('#chofpa');
	
	var sizes = $(part).find("#siofsi").children(".active").html(); 
	var colors = $(part).find("div.colors #colors").children(".active").attr("id") 
	var g_num = $(part).find("#g_num").html();
	var ol_ea = $(part).find(".amountinfo #amount").val();
	var o_num = $("#o_num").html();
	var ol_num = $(part).find("#ol_num").html();
	var gcs_num = $(part).find("#gcs_num").html(); 
	
	console.log("sizes : "+sizes + " colors:"+colors+" g_num: "+g_num+" ol_ea: "+ol_ea + " o_num : "+ o_num + " ol_num : "+ ol_num +" gcs_num: "+ gcs_num);
	
	$.ajax({
		
		url:"${pageContext.request.contextPath}/shop/orderlistupdate",
		data:{"sizes":sizes,"colors":colors,"g_num":g_num,"ol_ea":ol_ea,"o_num":o_num,"ol_num":ol_num,"gcs_num":gcs_num},
		dataType:"json",
		success:function(data){
			history.go(0);
			
		}

	});
	
});


$(document).on('click','#edit',function(){
	  
		var part = $(this).parents('#chofpa');
		var sizes = $(part).find("#siofsi"); 
		var colors = $(part).find("div.colors"); 
		var edit = $(part).find(".h6.edit #edit"); 
		var g_num = $(part).find("#g_num").html();
		var amountinfo = $(part).find(".amountinfo"); 
		var ol_ea = $(part).find(".amountinfo .amount");
		var goodea = $(part).find(".item.pr-2 .number");
		var totalprice = $(part).find(".ml-auto .h5.totalprice");
		
		var goodeas = goodea.html();
		
		$(sizes).empty();
		$(colors).empty();
		$(edit).empty();
		$(ol_ea).empty();
		$(totalprice).empty();
		
		$(amountinfo).empty();
		
		console.log("g_num: "+ g_num +" goodea: "+ goodea.html());

	$.ajax({
		
	url:"${pageContext.request.contextPath}/shop/gcsinfos",
	data:{"g_num":g_num ,"goodeas":goodeas},
	dataType:"json",
	success:function(data){
		
		var g_num = data.g_num ; 
	 	var g_price = data.g_price; // ?????? ?????? ?????? 
		let totalpricehtml = `<div id='totalprices'> ??? ??????: `+data.totalprice+`??? </div>` ;
		$(totalprice).append(totalpricehtml);
		
		
		$(data.sizeslist).each(function(i,d){
			
			sizename = d.sz_sizename;
			let html =`<span id="sizes" onclick="mysize(`+ g_num + `)"> `+sizename+` </span>`;
		
			$(sizes).append(html);
			
		});
		
		$(data.colorlist).each(function(i,d){
			
			let color = d.c_num;
			console.log("color:"+ color);
			if(color == "1"){
				
				 let html =`<div id="colors" class="c-white">
					<span  onclick="mycolor()"  ></span>
					</div>
					
					`;
					
				$(colors).append(html);
				
			}else if(color =="2"){
				let html =`<div id="colors" class="c-beige">
					<span onclick="mycolor()" ></span>
					</div>
					`; 
					
					$(colors).append(html);
				
			}else if(color =="3"){
				let html =`<div id="colors" class="c-yellow">
					<span onclick="mycolor()" >yellow</span>
					</div>`;
				
					$(colors).append(html);
				
			}else if(color =="4"){
				let html =`<div id="colors" class="c-green">
					<span onclick="mycolor()" ></span>
					</div>`;
				
					$(colors).append(html);
				
			}else if(color =="5"){
				let html =`<div id="colors" class="c-pink">
					<span onclick="mycolor()" ></span>
					</div>`;
				
					$(colors).append(html);
				
			}else if(color =="6"){
				let html =`<div id="colors" class="c-red">
					<span onclick="mycolor()" ></span>
					</div>`;
				
					$(colors).append(html);
				
			}else if(color =="7"){
				let html =`<div id="colors" class="c-pupple">
					<span onclick="mycolor()" ></span>
					</div>`;
				
					$(colors).append(html);
				
			}else if(color =="8"){
				let html =`<div  id="colors" class="c-blue">
					<span onclick="mycolor()" ></span>
					</div>`;
				
					$(colors).append(html);
				
			}else if(color =="9"){
				let html =`<div id="colors" class="c-grey">
					<span onclick="mycolor()" ></span>
					</div>`;
				
					$(colors).append(html);
				
			}else if(color =="10"){
				let html =`<div id="colors" class="c-navy">
					<span onclick="mycolor()" ></span>
					</div>`;
				
					$(colors).append(html);
				
			}else if(color =="11"){
				let html =`<div id="colors" class="c-black">
					<span onclick="mycolor()" ></span>
					</div>`;
				
					$(colors).append(html);
				
			}
			
			console.log("????????? ????????? : "+color);
			
			
			});	
		let savehtml =`<a href="#" id="save">Save</a>`;
		let cancelhtml =`<a href="#" id="cancel">Cancel</a>`;
		let ol_ea = `<p class ="amount" >??????: </p><input id='amount' type=number min='1' value='`+goodeas+`' onchange="myfunction(this)" >`;
		 $(edit).append(savehtml);
		 $(edit).append(cancelhtml);
		 $(amountinfo).append(ol_ea);
	}
	
	});
	
	});
	
function myfunction(obj){
	
    var number = document.getElementById("amount").value;
    var part =  $(obj).parents('#chofpa');
    var g_num = $(part).find("#g_num").html();
    var totalprice = $(part).find(".ml-auto .h5.totalprice");
    var goodea = $(part).find(".item.pr-2 .number");
    
    $(totalprice).empty();
	//var g_num = g_num;
	$(goodea).empty();
	
	

	$.ajax({
		
		url:"${pageContext.request.contextPath}/shop/totalchange",
	
		data:{"ol_ea":number,"g_num":g_num},
			
		dataType:"json",

		success:function(data){
			
			console.log(data.totalprice);
    		
			let totalpricehtml =`<div id='totalprices'> ??? ??????: `+data.totalprice+`??? </div>` ;
			$(goodea).append(number);
			$(totalprice).append(totalpricehtml);
		}
    	
    }) 

} 


$(document).on('click','#applycoupon',function(){
	
	var Coupon = document.getElementsByName("Coupon")[0];
	var couponvalue = Coupon.value; 
	var cccc = $(".coupon-form #Coupon option").removeClass('active');
	var cccc = $(".coupon-form #Coupon").find("#"+couponvalue).addClass('active');;
	
	
	$.ajax({
		url:"${pageContext.request.contextPath}/shop/applycoupon",
		data:{"couponvalue":couponvalue},
		dataType:"json",
		success:function(data){
		
			var e_point = data.eventvo.e_point;
			var e_discount = data.eventvo.e_discount;
			var orderprice = data.orderprice;
			
			var orpricediscount = (orderprice*e_discount/100);
			var totalprice  = orderprice - (orderprice*e_discount/100);
			console.log(orpricediscount);
			$(".d-flex.align-items-center.py-2.border-bottom #coupondiscount").empty();
			$(".d-flex.align-items-center.py-2.border-bottom #addpoint").empty();
			$(".d-flex.align-items-center.py-2.border-bottom #coupondiscount").append("- "+orpricediscount+"??? ("+e_discount+"%)");
			$(".d-flex.align-items-center.py-2.border-bottom #addpoint").append("+ "+e_point+ " p");
			$(".d-flex.align-items-center.py-2 .ml-auto.d-flex #totalprice").empty();
			$(".d-flex.align-items-center.py-2 .ml-auto.d-flex #totalprice").append(totalprice+"???");
		}
	});
});


function delSelect(obj){ 
	
	
var delchoice = $(obj).val(); 

//var m_addr = $(".d-flex.jusify-content-start.align-items-center.rounded.p-2 #m_addr");
console.log("delchoice : "+delchoice );

$.ajax({
	
	url:"${pageContext.request.contextPath}/shop/delselect",
	data:{"delchoice":delchoice},
	dataType:"json",
	success:function(data){
		
		$(".form-group #d_recname").prop("value",data.delinfovo.d_recname);
		$(".form-group #m_email").prop("value",data.delinfovo.m_email);
		$(".d-flex.jusify-content-start.align-items-center.rounded.p-2 #m_addr").prop("value",data.delinfovo.d_recaddr);
		$(".d-flex.jusify-content-start.align-items-center.rounded.p-2 #m_detail_addr").prop("value",data.delinfovo.d_recdetailaddr);
		
		let chk = $("#delcheckbox").prop("checked");
		$(".mr-auto .text-justify.text-muted").empty(); 
		$(".mr-auto .text-uppercase.text-muted").empty(); 
		
		if(chk){
			let chk = $("#delcheckbox").prop("checked",false);
			
			/* $(".mr-auto .text-justify.text-muted").append(data.delinfovo.d_recaddr);
			$(".mr-auto .text-uppercase.text-muted").append(data.delinfovo.d_recdetailaddr); */
			
			}
		}
	});
}


$(document).on('click','#cancel',function(){
	
	history.go(0);
	  
});


</script>

</head>

<body>

<%-- 	<header>
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
	</header> --%>
		<header>
		<div class="header-area ">
			<div class="header-top_area">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-8">
							<div class="short_contact_list">
								<ul>
									<li><a href="${pageContext.request.contextPath}/goodtest">??????1
											</a></li>
									<li><a
										href="${pageContext.request.contextPath}/resources/#">??????2</a></li>
									<li><a
										href="${pageContext.request.contextPath}/lsh/adminmain">????????? ?????????</a></li>	
									<li><a
										href="${pageContext.request.contextPath}/admin/">admin</a></li>	
								</ul>
							</div>
						</div>
						<div class="col-lg-6 col-md-4 ">
							<div class="social_media_links">
								<a href="${pageContext.request.contextPath}/sec/members"><i
									class="fa"> ??????1 </i> </a>
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
									 <a href="${pageContext.request.contextPath}/resources/#"> 
								<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/shopping-basket-512-white.png">
								</a> <a href="${pageContext.request.contextPath}/members/mypage"> 
								<img style="height: 30px;" src="${pageContext.request.contextPath }/resources/img/index_icon/guest-512-white.png">
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
										<li><a href="${pageContext.request.contextPath}/">???</a></li>
										<li><a href="${pageContext.request.contextPath}/about">?????????</a></li>
										<li><a href="#">blog <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="${pageContext.request.contextPath}/blog">?????????</a></li>
												<li><a
													href="${pageContext.request.contextPath}/singleblog">???????????????</a></li>
											</ul> </li>
										<li><a href="#">pages <i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a
													href="${pageContext.request.contextPath}/elements">elements</a></li>

											</ul> </li>
										<li><a href="${pageContext.request.contextPath}/">????????? </a></li>
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
<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ?????? ?????? @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
<div id="wrapper">


<nav class="bg-white">
    <div class="d-flex align-items-center">
        
        <div class="ml-auto"> <a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=1" class="text-uppercase">Back to shopping</a> </div>
    </div>
</nav>
<header>
    <div class="d-flex justify-content-center align-items-center pb-3">
        <div class="px-sm-5 px-2 active">??????/????????? <span class="fas fa-check"></span> </div>
        <div class="px-sm-5 px-2">??????</div>
        <div class="px-sm-5 px-2">????????????</div>
    </div>
    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
</header>
<div class="wrapper">
    <div class="h5 large">?????? ?????????</div>
    <div class="row">
        <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1">
            <div class="mobile h5">Billing Address</div>
            <div id="details" class="bg-white rounded pb-5">
                <form>
                    <div class="form-group"> <label class="text-muted">??????</label> <input id="d_recname" type="text" value="${memberdelinfo.d_recname}" class="form-control" readonly="readonly"> </div>
                    <div class="form-group"> <label class="text-muted">?????????</label>
                        <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input id="m_email" type="email" value="${memberdelinfo.m_email}" readonly="readonly"> <span class="fas fa-check text-success pr-sm-2 pr-0"></span> </div>
                    </div>

                    <div class="row">
                        
                        <div class="col-lg-6">
                            <div class="form-group"> <label>??????</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input id ="m_addr" type="text" value="${memberdelinfo.m_addr}" readonly="readonly"> <span class="fas fa-check text-success pr-2"></span> </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6">
                            <div class="form-group"> <label>?????? ??????</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input id ="m_detail_addr" type="text" value="${memberdelinfo.m_detail_addr}" readonly="readonly"> <span class="fas fa-check text-success pr-2"></span> </div>
                            </div>
                        </div>
                        
                    </div> 
                    <label>????????? ??????</label> 
                    
                    <select name="countrys" id="countrys" onchange="delSelect(this)">
                    
                    <c:forEach var="vo" items="${submemberdellist}">
                    
                    <option value="${vo.d_num}"> ${vo.d_recaddr} </option>
                    
                    </c:forEach>
                        
                    </select>
                    
                </form>
            </div> <input id="delcheckbox" type="checkbox"> <label>?????? ????????? ?????? ???????????? ???????????????.</label>
            <div id="address" class="bg-light rounded mt-3">
                <div class="h5 font-weight-bold text-primary"> ?????? ?????? </div>
                <div class="d-md-flex justify-content-md-start align-items-md-center pt-3" style="height: 200px;">
                    <div class="mr-auto" style="position: relative; bottom: 30px;"> <b>??? ??????</b>
                        <p class="text-justify text-muted"></p>
                        <p class="text-uppercase text-muted"></p>
                    </div>
                    <div class="rounded py-2 px-3" id="register"> 
                    
                    <a href="#" id="deladd"> <b>??? ????????????</b> </a>
                    <form action="${pageContext.request.contextPath}/shop/deladd" method="post">
                    <div class="form-group"> <label class="text-muted" style="
					    position: relative;
					    top: 3px;
					">??????</label> 
                    <input id="add_d_recname" type="text"  class="form-control" 
                    style="
   					 width: 100px;
   					 text-align: center;
   					 position: relative;
    				left: 35px;
   					 bottom: 30px;
   					 height: 30px;
					" > 
                    </div>
                     <div class="form-group"> <label class="text-muted" style="
					    position: relative;
					    bottom: 73px;
					    left: 140px;
					">????????????</label> 
                    <input id="add_d_recphone" type="text"  class="form-control" 
                    style="
   					 width: 170px;
   					 text-align: center;
   					 position: relative;
   					 left: 200px;
   					 bottom: 105px;
   					 height: 30px;
					" > 
                    </div>
                    <div class="form-group"> 
                    
		          <label class="text-muted" 
		            style="
		    		position: relative;
    				bottom: 110px;
					">?????????</label>
                     <div class="d-flex jusify-content-start align-items-center rounded p-2" style="
				    text-align: center;
				    position: relative;
				    bottom: 150px;
				    left: 45px;
				    width: 330px;
				"> 
                     <input id="add_m_email" type="email" > 
                     <span class="fas fa-check text-success pr-sm-2 pr-0"></span> 
                     </div>
                     
                    </div>
                    <input type="button" onclick="sample6_execDaumPostcode()" value="?????? ??????" style="
				    background-color: #007bff;
				    border: solid 1px #007bff;
				    color: white;
				    position: relative;
				    bottom: 165px;
				    left: 295px;
				    width: 80px;
					"><br>
					<div class="row" 
					    style= "
					    position: relative;
    					bottom: 175px;
					">
					
					<div class="col-lg-6">
                            <div class="form-group" > <label style="
								    position: relative;
								    bottom: 13px;
								">??????</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2" style="
							    width: 300px;
							    position: relative;
							    bottom: 25px;
							"> <input id ="d_recaddrinfo" type="text" > <span class="fas fa-check text-success pr-2"></span> </div>
                            </div>
					       </div>
					         <div class="col-lg-6">
                            <div class="form-group"> <label style="
							    position: relative;
							    top: 40px;
							    right: 200px;
							">?????? ??????</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2"
                                style="
							    position: relative;
							   top: 25px;
							    right: 200px;
							    width: 300px;
							"> <input id ="d_recdetailaddr" type="text" > <span class="fas fa-check text-success pr-2"></span> </div>
                            </div>
                        </div>
					      
					       <div> 	

					<input type="button" onclick="adddelinfo()" value="??????" style="
				    background-color: #007bff;
				    border: solid 1px #007bff;
				    color: white;
				    position: relative;
				    bottom: 10px;
				    left: 340px;
				    width: 50px;
					">
					</div>
					       
					</div>
					
			           <input type="hidden" id="sample6_postcode" placeholder="????????????">
					<input type="hidden" id="sample6_detailAddress"  placeholder="????????????">
					<input type="hidden" id="sample6_extraAddress" placeholder="????????????">
                </form>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1 pt-lg-0 pt-3"
					>
            <div id="cart" class="bg-white rounded">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="h6">?????? ??????</div><span id=o_num style=display:none;>${o_num}</span>
                   <!--  <div class="h6 edit"> <a href="javascript:editnow()">Edit</a> </div> -->
                </div>
                 
             	<div id="qwer">
                <c:forEach var="vo" items="${neworderlist}">
             
                <div class="d-flex jusitfy-content-between align-items-center pt-3 pb-2 border-bottom" id="chofpa">
                  
                  <span id=ol_num style=display:none;>
                    	${vo.ol_num}</span>
                    	
                   <span id=gcs_num style=display:none;>${vo.gcs_num}</span>
                    <div class="item pr-2"> <img src="${pageContext.request.contextPath}/resources/img/goods/${vo.g_saveimg}" width="80" height="80">
                        <div class="number">${vo.ol_ea}</div>
                    </div>
                    
                    <div class="d-flex flex-column px-3"> 
                    <b class="h5">${vo.g_name}</b> 
                    <span id=g_num style='display:none;'>${vo.g_num}</span>
                   
                  <c:choose>
                  	
                  	<c:when test="${vo.sz_ssubnum == '1' }">
                  	
                  	<p class ="sizes" >?????????:</p> <a href="#" class="h5 text-primary sizes" id="siofsi">S</a>
                  	
                  	</c:when>
                  	
                  	<c:when test="${vo.sz_ssubnum == '2' }">
                  	
                  	<p class ="sizes" >?????????:</p> <a href="#" class="h5 text-primary sizes " id="siofsi" >M</a>
                  	
                  	</c:when>
                  	
                  	<c:otherwise>
                  	
                  	<p class ="sizes" >?????????:</p> <a href="#" class="h5 text-primary sizes" id="siofsi" >L</a>
                  	
                  	</c:otherwise>
                  </c:choose>
              	<p class ="colors" >??????:</p>
              	
                   <c:choose>
                  	
                  	<c:when test="${vo.c_subnum == '1' }">
                  	
                  
					<div class="colors">			
                  	<div id="colors" class="c-white">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:when>
                  	
                  	<c:when test="${vo.c_subnum == '2' }">
                 
                	
                 <div class="colors">		
                  	<div id="colors" class="c-beige">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                 				
                  	</c:when>
                
                  	<c:when test="${vo.c_subnum == '3' }">
                  	
                  	<div class="colors">		
                  	<div id="colors" class="c-yellow">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	
                  	</c:when>
                  	<c:when test="${vo.c_subnum == '4' }">
                  	
                  	<div class="colors">		
                  	<div id="colors" class="c-green">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:when>
                  	<c:when test="${vo.c_subnum == '5' }">
                  	
                  	<div class="colors">		
                  	<div id="colors" class="c-pink">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:when>
                  	<c:when test="${vo.c_subnum == '6' }">
                  	
                  	<div class="colors">		
                  	<div id="colors" class="c-red">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:when>
                  	<c:when test="${vo.c_subnum == '7' }">
                  	
                  	<div class="colors">		
                  	<div id="colors" class="c-pupple">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:when>
                  	<c:when test="${vo.c_subnum == '8' }">
                  	
                  	<div class="colors">		
                  	<div id="colors" class="c-blue">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:when>
                  	<c:when test="${vo.c_subnum == '9' }">
                  	
                  	<div class="colors">		
                  	<div id="colors" class="c-grey">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:when>
                  	<c:when test="${vo.c_subnum == '10' }">
                  	
                  	<div class="colors">		
                  	<div id="colors" class="c-navy">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:when>
                  	<c:otherwise>
	
                  	<div class="colors">		
                  	<div id="colors" class="c-black">
						<span onclick="mycolor()" ></span>
							</div>
                  	</div>
                  	</c:otherwise>
                  </c:choose>
					 <div class="amountinfo"></div>
                    </div>
                    
                    <div class="ml-auto"> <b class="h5 totalprice"> ??? ??????: ${vo.ol_totalprice} ???</b> </div>
                    <div class="h6 edit"> <a href="#" id="edit">Edit</a> </div>
                   
                    
               		</div>
                
                </c:forEach>
         			
            </div>
                <!-- ????????? ???????????? ????????? ????????? ?????? ?????? ???  -->
              
                
            </div>
           
            <p class="text-muted"><a href="#" class="text-danger">?????? F&Q</a></p>
            
            <div class="h4 pt-3"> <span class="fas fa-shield-alt text-primary pr-2"></span> ?????? ?????? ??????</div>
            <div id="summary" class="bg-white rounded py-2 my-4">
 
 
               <div class="column">
               
            	<form class="coupon-form" method="post">
               
                <select name="Coupon" id="Coupon" " 
                style="
				    width: 300px;
				    position: relative;
				    right: 20px;
				">
				
				<c:forEach var="vo" items="${eceventcouponlist}">
                    
                    	<option id="${vo.e_code}" value="${vo.e_code}"> ${vo.e_name} /????????? ??????: +${vo.e_point} /??????: +${vo.e_discount}%  </option>
                    
                </c:forEach>

				
                </select>
                
                <input type="button" class="btn btn-outline-primary btn-sm"  id="applycoupon" value="Apply Coupon"
				                style="
				    position: relative;
				    left: 300px;
				    bottom: 30px;
				">
            </form>
            
       			</div>
                
                
                <div class="d-flex align-items-center">
                    <div class="display-5" style="
					    position: relative;
					    right: 25px;
					">?????? ??????</div>
                    <div class="ml-auto font-weight-bold">${orderprice}???</div>
                </div>
                <div class="d-flex align-items-center py-2 border-bottom">
                    <div class="display-5"style="
					    position: relative;
					    right: 25px;
					">?????? ??????</div>
                    <div class="ml-auto font-weight-bold" id="coupondiscount">- ${discount}???</div>
                </div>
                
                 <div class="d-flex align-items-center">
                    <div class="display-5" style="
					    position: relative;
					    right: 25px;
					">????????? ??????</div>
                    <div class="ml-auto font-weight-bold" id="m_points">${membervo.m_points} p</div>
                     <div id ="addcheck"> <button id="pointuse" style="
					    width: 50px;
					    margin-left: 10px;
					    background-color: #66cdaa;
					    border: solid 1px white;
					    color: white;
					" >??????</button></div>
                </div>
                 <div class="d-flex align-items-center">
                    <div class="display-5" style="
					    position: relative;
					    right: 25px;
					">????????? ??????</div>

                    <div class="ml-auto font-weight-bold" id="usepoint" 
					>- 0 p</div>
                   <!--  </div> -->
                </div>
                <div class="d-flex align-items-center py-2 border-bottom">
                    <div class="display-5"style="
					    position: relative;
					    right: 25px;
					">????????? ??????</div>
                    <div class="ml-auto font-weight-bold" id="addpoint">+ ${point} p</div>
                   
                </div>
                <div class="d-flex align-items-center py-2">
                    <div class="display-5"style="
					    position: relative;
					    right: 25px;
					">??? ??????</div>
                    <div class="ml-auto d-flex">
                        <div class="text-primary text-uppercase px-3"> KOR</div>
                        <div class="font-weight-bold" id="totalprice">${totalprice}???</div>
                    </div>
                </div>
                
            </div>
            <div class="row pt-lg-3 pt-2 buttons mb-sm-0 mb-2">
                <div class="col-md-6">
                    <div class="btn text-uppercase" id="goback"> ???????????? </div>
                </div>
                <div class="col-md-6 pt-md-0 pt-3">
                
                   
                    
                   <form  method="post" action="${pageContext.request.contextPath}/shop/kakaopay">
    				
    				<button id="btn-kakaopay" class="btn text-white ml-auto" style="
					    position: relative;
					    right: 25px;
					    
					">????????????</button>
					
					
					</form> 

                </div>
            </div>
         <!--    <div class="text-muted pt-3" id="mobile"> <span class="fas fa-lock"></span> ???????????? ????????????() </div> -->
        </div>
    </div>
 
</div>


</div>

<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ ?????? ??? @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->

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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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

		$("#delcheckbox").click(function(){
			
			let chk = $("#delcheckbox").prop("checked");
			let mainaddr = $(".d-flex.jusify-content-start.align-items-center.rounded.p-2 #m_addr").val(); 
			let m_detail_addr = $(".d-flex.jusify-content-start.align-items-center.rounded.p-2 #m_detail_addr").val(); 
			let opthionvalue = $("#details #countrys").val();
			console.log("@@@@@@@@@@@@@@@@@"+opthionvalue);
			if(chk){
				
				$(".mr-auto .text-justify.text-muted").append(mainaddr);
				$(".mr-auto .text-uppercase.text-muted").append(m_detail_addr);
				console.log(chk +" if ??? mainaddr: "+ mainaddr);
				
				$.ajax({
					
					url:"${pageContext.request.contextPath}/shop/delchoice",
					data:{"opthionvalue":opthionvalue},
					dataType:"json",
					success:function(){
						
						console.log("?????? ???");
					}
				});
			}else{
				$(".mr-auto .text-justify.text-muted").empty(); 
				$(".mr-auto .text-uppercase.text-muted").empty(); 
			}
			
		});
		
		$(document).on('click','#deladd',function(){
			alert("??? ?????? ??????.")
		});
		
		
		 function sample6_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

		                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
		                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
		                var addr = ''; // ?????? ??????
		                var extraAddr = ''; // ???????????? ??????
					
		                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
		                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
		                    addr = data.roadAddress;
		                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
		                    addr = data.jibunAddress;
		                }

		                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
		                if(data.userSelectedType === 'R'){
		                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
		                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
		                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // ???????????? ??????, ??????????????? ?????? ????????????.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // ????????? ??????????????? ?????? ????????? ?????????.
		                   
		                    $("#sample6_extraAddress").prop("value",extraAddr);
		                } else {
		                   
		                    $("#sample6_extraAddress").prop("value",'');
		                }

		                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
		               // document.getElementById('sample6_postcode').value = data.zonecode;
		                $("#sample6_postcode").prop("value",data.zonecode);
		                //document.getElementById("d_recaddrinfo").value = addr;
		                $("#d_recaddrinfo").prop("value",addr);
		                // ????????? ???????????? ????????? ????????????.
		             	 $("#d_recdetailaddr").focus();
		                // document.getElementById("sample6_detailAddress").focus();
		            }
		        }).open();
		    }
		 
function adddelinfo(){
			 
			 var add_d_recname = $("#add_d_recname").val(); 
			 var add_d_recphone = $("#add_d_recphone").val(); 
			 var add_m_email = $("#add_m_email").val(); 
			 var d_recaddrinfo = $("#d_recaddrinfo").val(); 
			 var d_recdetailaddr = $("#d_recdetailaddr").val(); 
			 $("select#countrys").empty(); 
			 $(".text-justify.text-muted").empty(); 
			 $(".text-uppercase.text-muted").empty(); 
			 $("#delcheckbox").prop('checked',"");
 console.log(" add_d_recname: "+add_d_recname +" add_d_recphone: "+add_d_recphone+" add_m_email: "+add_m_email+" d_recaddrinfo: "+d_recaddrinfo+" d_recdetailaddr: "+d_recdetailaddr)
		$.ajax({
			
			url:"${pageContext.request.contextPath}/shop/deladd",
			data:{"add_d_recname":add_d_recname,"add_d_recphone":add_d_recphone,"d_recaddrinfo":d_recaddrinfo,"d_recdetailaddr":d_recdetailaddr},
			dataType:"json",
			success:function(data){
				let html =``;
				$(data.memberdellist).each(function(i,d){
					
					html+= `<option value="`+d.d_num+`"> `+d.d_recaddr +` </option>`
				
				});
				
				$("select#countrys").append(html);
				$(".text-justify.text-muted").append(d_recaddrinfo); 
				$(".text-uppercase.text-muted").append(d_recdetailaddr); 
				$("#add_d_recname").prop('value',"");
				$("#add_d_recphone").prop('value',"");
				$("#d_recaddrinfo").prop('value',"");
				$("#d_recdetailaddr").prop('value',"");
				$("#add_m_email").prop('value',"");
				
				
			}
		})
 
 
}


	
$('#btn-kakaopay').click(function(){
	
	var form = $(this).parent();
	var o_num = $(".d-flex.justify-content-between.align-items-center #o_num").html(); 
	var totalprice = $(".d-flex.align-items-center.py-2 .ml-auto.d-flex #totalprice").html();
	var numberckeck = $(".d-flex.align-items-center .ml-auto.font-weight-bold #numberckeck").val();
	var coupon = $(".coupon-form #Coupon .active").val(); 
	console.log("coupon" + coupon +"numberckeck :" +numberckeck);
	var inputnumberckeck = "<input type='hidden' name='numberckeck' value='"+numberckeck +" '>";
	var inputo_num = "<input type='hidden' name='o_num' value='"+o_num +" '>";
	var inputtotalprice = "<input type='hidden' name='totalprice' value='"+ totalprice +" '>";
	var inputcoupon = "<input type='hidden' name='coupon' value='"+ coupon +" '>";
	$(form).append(inputo_num);
	$(form).append(inputtotalprice);
	$(form).append(inputcoupon);
	$(form).append(inputnumberckeck);
	}); 


$(document).on('click','#pointcheck',function(){
	
	
	var numberckeck = $(".d-flex.align-items-center .ml-auto.font-weight-bold #numberckeck");
	var pointuse= numberckeck.val();
	var usepoint = $(".d-flex.align-items-center #usepoint");
	usepoint.empty();
	
	var html = `- `+ pointuse + ` p`;
	usepoint.append(html); 
	
	var totalprice =$(".d-flex.align-items-center.py-2 .ml-auto.d-flex #totalprice");
	var totalpriceval = totalprice.html();
	var totalpriceval = totalpriceval.substr(0, totalpriceval.length - 1);
	console.log(totalpriceval);
	
	var subtotal = totalpriceval - pointuse ;
	console.log("subtotal"+subtotal);
	
	totalprice.empty();
	var html1 = ``+ subtotal + `???`;
	totalprice.append(html1); 
	
	
});


$("#pointuse").click(function(){
	
	var m_points = $(".d-flex.align-items-center #m_points")
	var addcheck = $(".d-flex.align-items-center #addcheck")
	m_points.empty();
	addcheck.empty();
	$.ajax({
		
		url:"${pageContext.request.contextPath}/shop/userpoint",
		dataType:"json",
		success:function(data){
			//alert(data.point);
			
			var html = `<input id="numberckeck" type="number" min='0' max='`+data.point+`' step='100' value=`+data.point+` style="
		    border: solid 1px;
			" >`;
			
			var checkhtml = `<button id="pointcheck" style="
			    width: 50px;
			    margin-left: 10px;
			    background-color: #66cdaa;
			    border: solid 1px white;
			    color: white;
			       " >??????</button> `;
			
			m_points.append(html);
			addcheck.append(checkhtml);
			
		}	
	});
});


$("#goback").click(function(){
	
	history.go(-1);

});
 </script>
		    
</body>

</html>