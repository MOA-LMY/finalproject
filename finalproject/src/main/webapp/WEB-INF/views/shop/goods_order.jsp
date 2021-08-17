
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
<!-- 메인굿즈 css링크 부분 -->
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
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="2"){
						let html =`<div id="colors" class="c-beige">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="3"){
						let html =`<div id="colors" class="c-yellow">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="4"){
						let html =`<div id="colors" class="c-green">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="5"){
						let html =`<div id="colors" class="c-pink">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="6"){
						let html =`<div id="colors" class="c-red">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="7"){
						let html =`<div id="colors" class="c-pupple">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="8"){
						let html =`<div  id="colors" class="c-blue">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="9"){
						let html =`<div id="colors" class="c-grey">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="10"){
						let html =`<div id="colors" class="c-navy">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}else if(color =="11"){
						let html =`<div id="colors" class="c-black">
							<span onclick="mycolor()" ></span>
							</div>`;
						
						colors.append(html);
						
					}

					console.log("들어온 사이즈 : "+color);
					
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

$(document).on('click','#edit',function(){
	  
		var part = $(this).parents('#chofpa');
		var sizes = $(part).find("#siofsi"); 
		var colors = $(part).find("div.colors"); 
		var edit = $(part).find(".h6.edit #edit"); 
		var g_num = $(part).find("#g_num").html();
		var amountinfo = $(part).find(".amountinfo"); 
		var ol_ea = $(part).find(".amountinfo .amount");
		
		$(sizes).empty();
		$(colors).empty();
		$(edit).empty();
		$(ol_ea).empty();
		console.log("g_num: "+ g_num );

	$.ajax({
		
	url:"${pageContext.request.contextPath}/shop/gcsinfos",
	data:{"g_num":g_num},
	dataType:"json",
	success:function(data){
		
		var g_num = data.g_num ; 
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
					<span onclick="mycolor()" ></span>
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
			
			console.log("들어온 사이즈 : "+color);
			
			
			});	
		let savehtml =`<a href="#" id="save">Save</a>`;
		let cancelhtml =`<a href="#" id="cancel">Cancel</a>`;
		let ol_ea = `<p class ="amount" >수량: </p><input id='amount' type=number min='1' value='1' >`;
		 $(edit).append(savehtml);
		 $(edit).append(cancelhtml);
		 $(amountinfo).append(ol_ea);
	}
	
	});
	
	});

$(document).on('click','#cancel',function(){
	
	history.go(0);
	  
	
});
</script>

</head>

<body>

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
	
<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 메인 시작 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->
<div id="wrapper">


<nav class="bg-white">
    <div class="d-flex align-items-center">
        
        <div class="ml-auto"> <a href="${pageContext.request.contextPath}/shop/goods_detail?gc_num=1" class="text-uppercase">Back to shopping</a> </div>
    </div>
</nav>
<header>
    <div class="d-flex justify-content-center align-items-center pb-3">
        <div class="px-sm-5 px-2 active">상품/배송지 <span class="fas fa-check"></span> </div>
        <div class="px-sm-5 px-2">결제</div>
        <div class="px-sm-5 px-2">주문내역</div>
    </div>
    <div class="progress">
        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
</header>
<div class="wrapper">
    <div class="h5 large">대표 배송지</div>
    <div class="row">
        <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1">
            <div class="mobile h5">Billing Address</div>
            <div id="details" class="bg-white rounded pb-5">
                <form>
                    <div class="form-group"> <label class="text-muted">이름</label> <input type="text" value="${memberdelinfo.d_recname}" class="form-control" readonly="readonly"> </div>
                    <div class="form-group"> <label class="text-muted">이메일</label>
                        <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input type="email" value="${memberdelinfo.m_email}" readonly="readonly"> <span class="fas fa-check text-success pr-sm-2 pr-0"></span> </div>
                    </div>

                    <div class="row">
                        
                        <div class="col-lg-6">
                            <div class="form-group"> <label>주소</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input type="text" value="${memberdelinfo.m_addr}" readonly="readonly"> <span class="fas fa-check text-success pr-2"></span> </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6">
                            <div class="form-group"> <label>상세 주소</label>
                                <div class="d-flex jusify-content-start align-items-center rounded p-2"> <input type="text" value="${memberdelinfo.m_detail_addr}" readonly="readonly"> <span class="fas fa-check text-success pr-2"></span> </div>
                            </div>
                        </div>
                        
                    </div> 
                    <label>배송지 목록</label> 
                    
                    <select name="country" id="country">
                    
                    <c:forEach var="vo" items="${submemberdellist}">
                    
                    	<option value="${vo.d_num}"> ${vo.d_recaddr} </option>
                    
                    </c:forEach>
                        
                    </select>
                    
                </form>
            </div> <input type="checkbox" checked> <label>배송 주소는 대표 배송지와 동일합니다.</label>
            <div id="address" class="bg-light rounded mt-3">
                <div class="h5 font-weight-bold text-primary"> 배송 주소 </div>
                <div class="d-md-flex justify-content-md-start align-items-md-center pt-3">
                    <div class="mr-auto"> <b>집 주소</b>
                        <p class="text-justify text-muted">${memberdelinfo.m_addr}</p>
                        <p class="text-uppercase text-muted">${memberdelinfo.m_detail_addr}</p>
                    </div>
                    <div class="rounded py-2 px-3" id="register"> <a href="#"> <b>새 주소등록</b> </a>
                        <p class="text-muted">새 주소등록</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-lg-6 col-md-8 col-sm-10 offset-lg-0 offset-md-2 offset-sm-1 pt-lg-0 pt-3">
            <div id="cart" class="bg-white rounded">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="h6">상품 정보</div>
                   <!--  <div class="h6 edit"> <a href="javascript:editnow()">Edit</a> </div> -->
                </div>
                 
             
                <c:forEach var="vo" items="${neworderlist}">
             
                <div class="d-flex jusitfy-content-between align-items-center pt-3 pb-2 border-bottom" id="chofpa">
                  
                   
                    <div class="item pr-2"> <img src="${pageContext.request.contextPath}/resources/img/goods/${vo.g_saveimg}"  width="80" height="80">
                        <div class="number">${vo.ol_ea}</div>
                    </div>
                    
                    <div class="d-flex flex-column px-3"> 
                    <b class="h5">${vo.g_name}</b> 
                    <span id=g_num style='display:none;'>${vo.g_num}</span>
                   
                  <c:choose>
                  	
                  	<c:when test="${vo.sz_ssubnum == '1' }">
                  	
                  	<p class ="sizes" >사이즈:</p> <a href="#" class="h5 text-primary sizes" id="siofsi">S</a>
                  	
                  	</c:when>
                  	
                  	<c:when test="${vo.sz_ssubnum == '2' }">
                  	
                  	<p class ="sizes" >사이즈:</p> <a href="#" class="h5 text-primary sizes " id="siofsi" >M</a>
                  	
                  	</c:when>
                  	
                  	<c:otherwise>
                  	
                  	<p class ="sizes" >사이즈:</p> <a href="#" class="h5 text-primary sizes" id="siofsi" >L</a>
                  	
                  	</c:otherwise>
                  </c:choose>
              	<p class ="colors" >컬러:</p>
              	
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
                    
                    <div class="ml-auto"> <b class="h5 totalprice">${vo.ol_totalprice} 원</b> </div>
                    <div class="h6 edit"> <a href="#" id="edit">Edit</a> </div>
                   
                    
               		</div>
                
                </c:forEach>
         			
            
                <!-- 총금랙 쿠폰할인 총금랙 구하는 함수 만들 것  -->
              
                
            </div>
           
            <p class="text-muted"><a href="#" class="text-danger">주문 F&Q</a></p>
            
            <div class="h4 pt-3"> <span class="fas fa-shield-alt text-primary pr-2"></span> 할인 쿠폰 조회</div>
            <div id="summary" class="bg-white rounded py-2 my-4">

<!--                 <div class="table-responsive">
                    <table class="table table-borderless w-75">
                        <tbody>
                            <tr class="text-muted">
                                <td>Battlecreek Coffee</td>
                                <td>:</td>
                                <td>$80.9</td>
                            </tr>
                            <tr class="text-muted">
                                <td>Code-770</td>
                                <td>:</td>
                                <td>770</td>
                            </tr>
                            <tr class="text-muted">
                                <td>Quantity</td>
                                <td>:</td>
                                <td>
                                    <div class="d-flex align-items-center"> <span class="fas fa-minus btn text-muted"></span> <span>2</span> <span class="fas fa-plus btn text-muted"></span> </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
             </div> -->
                
               <div class="column">
            <form class="coupon-form" method="post">
                <input class="form-control form-control-sm" type="text" placeholder="Coupon code" required="">
                <button class="btn btn-outline-primary btn-sm" type="submit">Apply Coupon</button>
            </form>
       			</div>
                
                <div class="d-flex align-items-center">
                    <div class="display-5">주문 금액</div>
                    <div class="ml-auto font-weight-bold"> 여기 수정 </div>
                </div>
                <div class="d-flex align-items-center py-2 border-bottom">
                    <div class="display-5">쿠폰 할인</div>
                    <div class="ml-auto font-weight-bold"> 여기 수정 </div>
                </div>
                <div class="d-flex align-items-center py-2">
                    <div class="display-5">총 금액</div>
                    <div class="ml-auto d-flex">
                        <div class="text-primary text-uppercase px-3"> KOR</div>
                        <div class="font-weight-bold"> 여기 수정 </div>
                    </div>
                </div>
                
            </div>
            <div class="row pt-lg-3 pt-2 buttons mb-sm-0 mb-2">
                <div class="col-md-6">
                    <div class="btn text-uppercase">돌아가기 </div>
                </div>
                <div class="col-md-6 pt-md-0 pt-3">
                    <div class="btn text-white ml-auto"> <span class="fas fa-lock"></span> 결제 </div>
                </div>
            </div>
         <!--    <div class="text-muted pt-3" id="mobile"> <span class="fas fa-lock"></span> 저장하는 부분인데() </div> -->
        </div>
    </div>
 
</div>


</div>

<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 메인 끝 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  -->

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