<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	href="${pageContext.request.contextPath}/resources/join/css/mypage.css">
	
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

 <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/popup.css"> 
 	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/popup1.css"> 


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<style type="text/css">



	#page a{
	font-size: 1.5em;
	}
	
</style>
<script type="text/javascript">





  
</script>
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
									src="${pageContext.request.contextPath}/resources/img/prising/10.png"
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
    <div class="alert alert-dismissible fade show text-center" style="margin-bottom: 30px;border: 1px solid black;"><span class="alert-close" data-dismiss="alert"></span><h1>My Page</h1>&nbsp;&nbsp;With this purchase you will earn <strong>290</strong> Reward Points.</div>
    <!-- Shopping Cart-->
    <div class="table-responsive shopping-cart">
        <table class="table" style="width: 1110px; text-align: center">
            <tbody>
                <tr>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="javascript:coupon(${pageNum });"><img src="${pageContext.request.contextPath }/resources/img/mypage/coupon.png" alt="Coupon" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="javascript:coupon(${pageNum });">Coupon</a></h4><span><em>Enabled :</em> ${couponNow }</span>
                            </div>
                        </div>
                    </td>
                    <td>
                         <div class="product-item">
                            <a class="product-thumb" href="#"><img src="${pageContext.request.contextPath }/resources/img/mypage/coins-512.png" alt="Coin" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="#">Points</a></h4><span><em>Usable :</em> 1,000 pt</span>
                            </div>
                        </div>
                    </td>
                    <td> <div class="product-item">
                            <a class="product-thumb" href="${pageContext.request.contextPath }/members/editInfo">
                            <img src="${pageContext.request.contextPath }/resources/img/mypage/edit-user-512.png" alt="Edit" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="${pageContext.request.contextPath }/members/editInfo">Edit Info</a></h4>
                            </div>
                        </div></td>
                     <td> <div class="product-item">
                            <a class="product-thumb" href="javascript:purchaseorder(${pageNum });"><img src="${pageContext.request.contextPath }/resources/img/mypage/purchase-order-512.png" alt="Purchase-Order" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="javascript:purchaseorder(${pageNum });">Purchase Order</a></h4>
                                <span><em></em></span>
                            </div>
                        </div></td>
                </tr>
                <tr>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="javascript:delivery(${pageNum });"><img src="${pageContext.request.contextPath }/resources/img/mypage/delivery-512.png" alt="Delivery" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="javascript:delivery(${pageNum });">Delivery</a></h4><span><em></em></span>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="javascript:reservation();"><img src="${pageContext.request.contextPath }/resources/img/mypage/reservation.png" alt="Reservation" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="javascript:reservation(${pageNum });">Reservation</a></h4><span><em>Now:</em> ${reservationNow }</span>
                            </div>
                        </div>
                    </td>
                     <td>
                        <div class="product-item">
                            <a class="product-thumb" href="javascript:address()"><img src="${pageContext.request.contextPath }/resources/img/mypage/address.png" alt="address" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="javascript:address()">Address</a></h4><span><em>On:</em> ${addressNow }
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="javascript:review(${pageNum })"><img src="${pageContext.request.contextPath }/resources/img/mypage/review.png" alt="Cart" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="javascript:review(${pageNum })">Review</a></h4><span><em>Recent:</em> ${reviewNow }
                            </div>
                        </div>
                    </td>
                    
                    <!--
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
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash" style="color : #d80a54"></i></a></td>
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
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash" style="color : #d80a54"></i></a></td>
                </tr>
                -->
            </tbody>
        </table>
    </div>
    


	<div id="content" class="table-responsive shopping-cart">
		<table class="table" style="width: 1110px; text-align: center">
			<tr>
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
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash" style="color : #d80a54"></i></a></td>
			</tr>
		</table>
		
	
</div>

<div id="content" class="content">
<div id="wrep" style="
    height: auto;
    background: lightgray;
    position: relative;
    width: 1110px;
    top: 300px;
">
<div id="ordergoods">
<p>상품 정보</p>
</div>
</div>
</div>


<div id="content2" class="content2">
<div id="wrep" style="
    height: auto;
    background: lightgray;
    position: relative;
    width: 1110px;
    top: 300px;
">
<div id="partnersInfo">
<p>파트너사 정보</p>
</div>
</div>
</div>

<div id="content1" class="content1">
<div id="wrep" style="
    height: auto;
    background: lightgray;
    position: relative;
    width: 1110px;
    top: 300px;
">
<div id="petInfo">
<p>펫 정보 </p>
</div>
</div>
</div>





		<button id="close" class="close">
						  <div class="line"></div>
						  <div class="line"></div>

		</button>

				
						<button id="close1" class="close1">
						  <div class="line"></div>
						  <div class="line"></div>
						</button>
						<button id="close2" class="close2">
						  <div class="line"></div>
						  <div class="line"></div>
						</button>


<div id="page" style="text-align: center;"></div>

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
									src="${pageContext.request.contextPath}/resources/img/prising/10.png"
									alt="">
								</a>
							</div>
							<p class="address_text" style="
							    position: relative;
							    top: 30px;
							    right: 20px;
							">239 E 5th St, New York NY 10003, USA
							</p>
							<div class="socail_links" style="
						    position: relative;
												    
						    right: 20px;
												    
												">
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

	var pageNum='${pageNum}';
	if(pageNum=""){
		pageNum=1;
	}
	function reservation(pageNum){
		$.ajax({
			url: "${pageContext.request.contextPath }/members/reservationList",
			type:"get",
			data:{"spageNum":pageNum},
			dataType:"json",
			success: function(data){
				$("#content").empty();
				$("#page").empty();
				
				let html = `
					 <table class="table" style="width: 1110px; text-align: center">
					<tr>
					<th>예약된 펫</th>
					<th>파트너사 </th>
					<th>예약 날짜</th>
					<th>예약 진행상황</th>
					<th>삭제</th>
					</tr>
				`;
				
				$(data.list).each(function(i,d){
					let r_num = d.r_num;
					let r_process = d.r_proccess;
					let r_date = d.r_date;
					let m_id = d.m_id;
					let pt_id = d.pt_id;
					let pet_num = d.pet_num;
					let pet_name = d.pet_name;
					if(r_process==0){
						r_process="접수 중";
					}else if(r_process==1){
						r_process="접수 완료"
					}else{
						r_process="방문 완료"
					}
					html+= `
						<tr>
						<td><a id="pet_info`+pet_num+`" class="pet_info" href="javascript:petInfo(`+pet_num+`)">`+pet_name+`</a></td>
						<td><a href="javascript:partnersInfo(`+pt_id+`)">`+pt_id+`</a></td>
						<td>`+r_date+`</td>
						<td>`+r_process+`</td>
						<td class="text-center"><a class="remove-from-cart" href="javascript:deleteReservation(`+r_num+`);" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash" style="color : #d80a54"></i></a></td>
						</tr>
					`
				});
				$("#content").append(html+"</table>");
				let startPageNum = data.pu.startPageNum;
				let endPageNum= data.pu.endPageNum;
				let startRow = data.pu.startRow;
				let endRow = data.pu.endRow;
				let pageNum = data.pu.pageNum;
				console.log(startPageNum);
				var str="";
				if(startPageNum>5){
					str +="<a href='javascript:reservation("+(startPageNum-1)+")'>이전</a>";
				}
				for(let i=startPageNum;i<=endPageNum;i++){
					if(pageNum==i){
						str = str +"<a href = 'javascript:reservation("+i+")' >" +"<span style='color:black;'>"+[i] +"</span>"+"</a>";
					}else{
						str = str +"<a href = 'javascript:reservation("+i+")'>" +"<span style='color:gray;'>"+[i] +"</span>"+"</a>";
						
					}
				}
				if(endPageNum<data.pu.totalPageCount){
					str +="<a href='javascript:reservation("+(endPageNum+1)+")'>다음</a>";
				}
				$("#page").append(str);

				
				}
			
			
			
		})
	}
	function deleteReservation(r_num){
		var header = '${_csrf.headerName}';
		var token = '${_csrf.token}';
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		
		$.ajax({
			url: "${pageContext.request.contextPath}/members/reservationDelete",
			data:{"r_num":r_num},
			type:"post",
			dataType:"json",
			beforeSend : function(xhr)
            {   
				xhr.setRequestHeader(header, token);
            },
			success: function(data){
				if(data.result=="success"){
					alert("삭제 성공!")
					reservation();
				}else{
					alert("삭제 실패");
				}
			}
		
	});
		}else{ 
		    return;
		}
	}
		function petInfo(pet_num){
			console.log(pet_num)
			$.ajax({
				url:"${pageContext.request.contextPath}/members/petInfo",
				data:{"pet_num":pet_num},
				dataType:"json",
				success:function(data){
					$("#petInfo").empty();
					
					var html = `
						<div class="d-flex jusitfy-content-between align-items-center pt-3 pb-2 border-bottom" id="chofpa" >
						 <table class="table" style="width: 1110px; text-align: center">
							<tr>
							<th>사진</th>
							<th>종류</th>
							<th>이름</th>
							<th>나이</th>
							<th>컬러</th>
							<th>비용</th>		
							</tr>
					 `;
					 $(data.vo).each(function(i,d){
						let pet_saveimg = d.pet_saveimg;
						let pet_type = d.pet_type;
						let pet_name = d.pet_name
						let pet_age = d.pet_age;
						let pet_color = d.pet_color;
						let pet_price = d.pet_price;
						
						html+=`
							<img src="${pageContext.request.contextPath}/resources/img/pet/`+ pet_saveimg + `" width="80" height="80" 
							style="
						    	position: relative;
						    	top: 10px;
						">
						</td>
							<td style="
							    position: relative;
						    top: 40px;
						">`+pet_type+`</td>
							<td style="
							    position: relative;
						    top: 40px;
						">`+pet_name+`</td>
							<td style="
							    position: relative;
						    top: 40px;
						">`+pet_age+`</td>
							<td style="
							    position: relative;
						    top: 40px;
						">`+pet_color+`</td>
							<td style="
							    position: relative;
						    top: 40px;
						">`+pet_price+`원</td>

							</tr>
							`;
					})
						$("#petInfo").append(html+"</table></div>"); 
			              console.log("active");
						   $("#pet_info"+pet_num).toggleClass('active');
						    $('.content1').toggleClass('show');
						    $('.close1').toggleClass('open');
						
					 }
				})
			};

		  $(document).on('click','.button', function() {
			  console.log("button");
			  
			 var o_num = $(this).parent().next().html();
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
					    top: 40px;
					">`+o_num+`</td>
						<td style="
						    position: relative;
					    top: 40px;
					">`+g_name+`</td>
						<td style="
						    position: relative;
					    top: 40px;
					">`+sz_sizename+`</td>
						<td style="
						    position: relative;
					    top: 40px;
					">`+c_colorname+`</td>
						<td style="
						    position: relative;
					    top: 40px;
					">`+bk_ea+`개</td>
					
						<td style="
						    position: relative;
					    top: 40px;
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
					    top: 40px;
					">`+o_num+`</td>
						<td style="
						    position: relative;
					    top: 40px;
					">`+g_name+`</td>
						<td style="
						    position: relative;
					    top: 40px;
					">`+sz_sizename+`</td>
						<td style="
						    position: relative;
					    top: 40px;
					">`+c_colorname+`</td>
						<td style="
						    position: relative;
					    top: 40px;
					">`+ol_ea+`개</td>
					
						<td style="
						    position: relative;
					    top: 40px;
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
		  $(document).on('click','.close1', function() {
			  console.log("close1");
		    $(this).toggleClass('open');
		 	$('.pet_info').removeClass('active');
		    $('.content1').removeClass('show');
		  });
		
		 
	function delivery(pageNum){
		console.log("pageNum: "+pageNum)
		$.ajax({
			url: "${pageContext.request.contextPath}/member/purchaseorder",
			data:{"pageNum":pageNum},
			dataType:"json",
			success:function(data){
				$("#content").empty(); 
				$("#page").empty(); 
				
				console.log("갔다옴")
				
				let html = `
					 <table class="table" style="width: 1110px; text-align: center">
					<tr>
					<th>상세 보기</th>
					<th>주문 번호</th>
					<th>주문 일자</th>
					<th>수령인 이름</th>
					<th>수령인 번호</th>
					<th>수령인 주소</th>
					<th>수령인 상세주소</th>
					<th>배송현황</th>
					</tr>
				`;
								
				$(data.paypagelist).each(function(i,d){
					let p_num = d.p_num
					let o_num = d.o_num;
					let p_totalprice = d.p_totalprice;
					let p_usecoupon = d.p_usecoupon;
					let p_date = d.p_date;
					let d_recname = d.d_recname;
					let d_recphone = d.d_recphone;
					let d_recaddr = d.d_recaddr;
					let d_recdetailaddr = d.d_recdetailaddr;
					let o_proccess = d.o_proccess;
					
					html+= `
						<tr>
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

						
						
						</td>
						<td>`+o_num+`</td>
						<td>`+p_date+`</td>
						<td>`+d_recname+`</td>
						<td>`+d_recphone+`</td>
						<td>`+d_recaddr+`</td>
						<td>`+d_recdetailaddr+`</td>
						<td>`+o_proccess+`</td>
						</tr>
					`
				});
				$("#content").append(html+"</table>");
				
				let startPageNum = data.pu.startPageNum;
				let endPageNum= data.pu.endPageNum;
				let startRow = data.pu.startRow;
				let endRow = data.pu.endRow;
				let pageNum = data.pu.pageNum;
				var str="";
				if(startPageNum>5){
					str +="<a href='javascript:delivery("+(startPageNum-1)+")'>이전</a>";
				}
				for(let i=startPageNum;i<=endPageNum;i++){
					if(pageNum==i){
						str = str +"<a href = 'javascript:delivery("+i+")' >" +"<span style='color:black;'>"+ [i] +"</span>"+"</a>";
					}else{
						str = str +"<a href = 'javascript:delivery("+i+")'>" +"<span style='color:gray;'>"+ [i] +"</span>"+"</a>";
						
					}
				}
				if(endPageNum<data.pu.totalPageCount){
					str +="<a href='javascript:delivery("+(endPageNum+1)+")'>다음</a>";
				}
				$("#page").append(str);

				
				}
		});
		  
	}
	function purchaseorder(pageNum){
		console.log("pageNum: "+pageNum)
		$.ajax({
			url: "${pageContext.request.contextPath}/member/purchaseorder",
			data:{"pageNum":pageNum},
			dataType:"json",
			success:function(data){
				$("#content").empty(); 
				$("#page").empty(); 
				
				console.log("갔다옴")
				
				let html = `
					 <table class="table" style="width: 1110px; text-align: center">
					<tr>
					<th>상세 보기</th>
					<th>주문 번호</th>
					<th>결제 가격</th>
					<th>쿠폰 사용 여부</th>
					<th>구매 일자</th>
					<th>수령인 이름</th>
					<th>수령인 번호</th>
					<th>수령인 주소</th>
					<th>수령인 상세주소</th>
					</tr>
				`;
								
				$(data.paypagelist).each(function(i,d){
					let p_num = d.p_num
					let o_num = d.o_num;
					let p_totalprice = d.p_totalprice;
					let p_usecoupon = d.p_usecoupon;
					let p_date = d.p_date;
					let d_recname = d.d_recname;
					let d_recphone = d.d_recphone;
					let d_recaddr = d.d_recaddr;
					let d_recdetailaddr = d.d_recdetailaddr;
					if(p_usecoupon==0){
						p_usecoupon="미사용";
					}else{
						p_usecoupon="사용"
					}
					html+= `
						<tr>
						<td>

						<div class="button" style="
						    position: relative;
					    top: 20px;
					    left: 35px;
					    width: 75px;
					    
					">
						  <span style="
							    color: white;
						  ">view</span>
						</div>

						
						
						</td>
						<td>`+o_num+`</td>
						<td>`+p_totalprice+`원</td>
						<td>`+p_usecoupon+`</td>
						<td>`+p_date+`</td>
						<td>`+d_recname+`</td>
						<td>`+d_recphone+`</td>
						<td>`+d_recaddr+`</td>
						<td>`+d_recdetailaddr+`</td>
						</tr>
					`
				});
				$("#content").append(html+"</table>");
				
				let startPageNum = data.pu.startPageNum;
				let endPageNum= data.pu.endPageNum;
				let startRow = data.pu.startRow;
				let endRow = data.pu.endRow;
				let pageNum = data.pu.pageNum;
				var str="";
				if(startPageNum>5){
					str +="<a href='javascript:purchaseorder("+(startPageNum-1)+")'>이전</a>";
				}
				for(let i=startPageNum;i<=endPageNum;i++){
					if(pageNum==i){
						str = str +"<a href = 'javascript:purchaseorder("+i+")' >" +"<span style='color:black;'>"+ [i] +"</span>"+"</a>";
					}else{
						str = str +"<a href = 'javascript:purchaseorder("+i+")'>" +"<span style='color:gray;'>"+ [i] +"</span>"+"</a>";
						
					}
				}
				if(endPageNum<data.pu.totalPageCount){
					str +="<a href='javascript:purchaseorder("+(endPageNum+1)+")'>다음</a>";
				}
				$("#page").append(str);

				
				}
		});
	}

	function coupon(pageNum){
		$.ajax({
			url: "${pageContext.request.contextPath }/members/couponList",
			type:"get",
			data:{"spageNum":pageNum},
			dataType:"json",
			success: function(data){
				$("#content").empty();
				$("#page").empty();
				
				let html = `
					 <table class="table" style="width: 1110px; text-align: center">
					<tr>
					<th>이벤트 명</th>
					<th>이벤트 종료일</th>
					<th>포인트 적립</th>
					<th>할인율</th>
					<th>쿠폰 수량</th>
					<th>쿠폰 사용 여부</th>
					<th>삭제</th>
					</tr>
				`;
				
				$(data.list).each(function(i,d){
					let ec_num = d.ec_num
					let e_content = d.e_content;
					let e_enddate = d.e_enddate;
					let c_ea = d.c_ea;
					let m_id = d.m_id;
					let e_discount = d.e_discount;
					let e_point = d.e_point;
					let c_usedcoupon = d.c_usedcoupon;
					if(c_usedcoupon==0){
						c_usedcoupon="비활성화";
					}else{
						c_usedcoupon="활성화"
					}
					html+= `
						<tr>
						<td>`+e_content+`</td>
						<td>`+e_enddate+`</td>
						<td>`+e_point+`</td>
						<td>`+e_discount+`%</td>
						<td>`+c_ea+`</td>
						<td>`+c_usedcoupon+`</td>
						<td class="text-center"><a class="remove-from-cart" href="javascript:deleteCoupon(`+ec_num+`);" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash" style="color : #d80a54"></i></a></td>
						</tr>
					`
				});
				$("#content").append(html+"</table>");
				let startPageNum = data.pu.startPageNum;
				let endPageNum= data.pu.endPageNum;
				let startRow = data.pu.startRow;
				let endRow = data.pu.endRow;
				let pageNum = data.pu.pageNum;
				var str="";
				if(startPageNum>5){
					str +="<a href='javascript:coupon("+(startPageNum-1)+")'>이전</a>";
				}
				for(let i=startPageNum;i<=endPageNum;i++){
					if(pageNum==i){
						str = str +"<a href = 'javascript:coupon("+i+")' >" +"<span style='color:black;'>"+[i] +"</span>"+"</a>";
					}else{
						str = str +"<a href = 'javascript:coupon("+i+")'>" +"<span style='color:gray;'>"+[i] +"</span>"+"</a>";
						
					}
				}
				if(endPageNum<data.pu.totalPageCount){
					str +="<a href='javascript:coupon("+(endPageNum+1)+")'>다음</a>";
				}
				$("#page").append(str);

				
				}
			
			
			
		})
	}
	function deleteCoupon(ec_num){
		console.log(ec_num)
		var header = '${_csrf.headerName}';
		var token = '${_csrf.token}';
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		
		$.ajax({
			url: "${pageContext.request.contextPath}/members/couponDelete",
			data:{"ec_num":ec_num},
			type:"post",
			dataType:"json",
			beforeSend : function(xhr)
            {   
				xhr.setRequestHeader(header, token);
            },
			success: function(data){
				if(data.result=="success"){
					alert("삭제 성공!")
					coupon();
				}else{
					alert("삭제 실패");
				}
			}
		
	});
		}else{ 
		    return;
		}
	}
	
	function address(){
				$("#content").empty();
				$("#page").empty();
		$.ajax({
			url: "${pageContext.request.contextPath }/members/addressList",
			type:"get",
			dataType:"json",
			success: function(data){
				
				let html = `
					 <table class="table" style="width: 1110px; text-align: center">
					<tr>
					<th>수령인</th>
					<th>기본 주소</th>
					<th>상세 주소</th>
					<th>수령인 연락처</th>
					<th>대표 배송지</th>
					<th>삭제</th>
					</tr>
				`;
				
				$(data.list).each(function(i,d){
					let d_recname = d.d_recname;
					let d_recaddr = d.d_recaddr;
					let d_recdetailaddr = d.d_recdetailaddr;
					let d_recphone = d.d_recphone;
					let m_id = d.m_id;
					let d_mainaddr = d.d_mainaddr;
					let d_num = d.d_num
					/* if(d_mainaddr==0){
						d_mainaddr="-";
					}else{
						d_mainaddr="대표배송지"
					} */
					html+= `
						<tr>
						<td>`+d_recname+`</td>
						<td>`+d_recaddr+`</td>
						<td>`+d_recdetailaddr+`</td>
						<td>`+d_recphone+`</td>
						<td><input type="radio" name="mainaddr" id="mainaddr`+d_num+`" value="`+d_mainaddr+`"></td>
						<td class="text-center"><a class="remove-from-cart" href="javascript:deleteAddress(`+d_num+`,`+d_mainaddr+`);" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash" style="color : #d80a54"></i></a></td>
						</tr>
						
						
					`;
				});
				$("#content").append(html+"</table>");
				$("#content").append(`
						<div class="shopping-cart-footer">
				        <div class="column">
								 <table class="table" style="width: 1110px; text-align: center">
								 <tr>
								 <th colspan="2" style="width:50%; border: none;"></th>
								 <th colspan="2">배송지 추가</th>
								 </tr>			
								  <tr>
								 	<td colspan="2" style="width:50%; border: none;"></td>
								 	<td >수령인 이름</td>
								 	<td><input class="form-control form-control-sm" type="text" placeholder="Name" name="d_recname"></td>
								</tr>
								 <tr>
								 	<td colspan="2" style="width:50%; border: none;"></td>
								 	<td >수령인 전화번호</td>
								 	<td><input class="form-control form-control-sm" type="text" placeholder="PhoneNumber" name="d_recphone"></td>
								</tr>
								 <tr>
								 	<td colspan="2" style="width:50%; border: none;"></td>
								 	<td>기본 주소</td>
								 	<td><input style="background-color:#FFFFFF" class="form-control form-control-sm" type="text" placeholder="Address" name="d_recaddr" readonly="readonly" onclick="postcode()"></td>
								 </tr>
								 <tr>	
								 	<td colspan="2" style="width:50%; border: none;"></td>
								 	<td>상세 주소</td>
								 	<td><input class="form-control form-control-sm" type="text" placeholder="Detail Address" name="d_recdetailaddr">
								 </td>
								 </tr>
								 <tr>
								 <td colspan="2" style="width:50%; border: none;"></td>
								 <td colspan="2" style="text-align: right;">
				                <button class="btn btn-outline-primary btn-sm" onclick="addressInsert()">Add address</button>
								 </td>
								 </tr>
								 
								 </table>
								 	<input type="hidden" id="sample6_postcode" placeholder="우편번호">
									<input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
				        </div>
					</div>
						`)
				$("input:radio[value='1']").prop("checked", true);
				$("input:radio[value='1']").parent().parent().css("backgroundColor","#f1eacd");
				}
		})
	}
	$(document).on("click", "input:radio[value='0']", function (){
		let d_num =  $(this).attr("id").substr(8);
		console.log(d_num)
		if (confirm("대표 배송지를 변경하시겠습니까??") == true){
			$.ajax({
				url: "${pageContext.request.contextPath }/members/addressUpdate",
				type:"get",
				data:{"d_num":d_num},
				dataType:"json",
				success: function(data){
					if(data.result=="success"){
						address();						
					}else{
						alert("error531");
					}
				}
			});
		}else{
			$("input:radio[value='1']").prop("checked", true);
			return;
		}
	})
	function deleteAddress(d_num,d_mainaddr){
		if(d_mainaddr==1){
			alert("대표 배송지는 삭제가 불가합니다.")
			return;
		}
		var header = '${_csrf.headerName}';
		var token = '${_csrf.token}';
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		
		$.ajax({
			url: "${pageContext.request.contextPath}/members/addressDelete",
			data:{"d_num":d_num},
			type:"post",
			dataType:"json",
			beforeSend : function(xhr)
            {   
				xhr.setRequestHeader(header, token);
            },
			success: function(data){
				if(data.result=="success"){
					alert("삭제 성공!")
					$("#content").empty();
					address();
				}else{
					alert("삭제 실패");
				}
			}
		
	});
		}else{ 
		    return;
		}
	}
	 function postcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementsByName("d_recaddr")[0].value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementsByName("d_recdetailaddr")[0].focus();
	            }
	        }).open();
	    }
	function addressInsert(){
		console.log($(".table").children()[1].children.length);
		if($(".table").children()[1].children.length==4){
			alert("배송지는 최대 3개까지 저장할 수 있습니다.")
			return;
		}else{
			let d_recname =  $("input[name='d_recname']").val();
			let d_recphone =  $("input[name='d_recphone']").val();
			let d_recaddr =  $("input[name='d_recaddr']").val();
			let d_recdetailaddr =  $("input[name='d_recdetailaddr']").val();
				
				if(d_recname==""){
					alert("수령인을 입력해주세요");
					return;
				}else if(d_recphone==""){
					alert("수령인 전화번호를 입력해주세요")
					return;
				}else if(d_recaddr==""){
					alert("수령인 주소를 입력해주세요")
					return;
				}else if(d_recdetailaddr==""){
					alert("상세주소를 입력해주세요")
					return;
				}
				
				var header = '${_csrf.headerName}';
				var token = '${_csrf.token}';
				if (confirm("배송지를 추가하시겠습니까?") == true){
			
				$.ajax({
					url: "${pageContext.request.contextPath}/members/addressInsert",
					data:{"d_recname":d_recname,"d_recphone":d_recphone,"d_recaddr":d_recaddr,"d_recdetailaddr":d_recdetailaddr},
					type:"post",
					dataType:"json",
					beforeSend : function(xhr)
		            {   
						xhr.setRequestHeader(header, token);
		            },
					success: function(data){
						if(data.result=="success"){
							address();
						}else{
							alert("오류");
						}
					}
				})
				}else{
					return;
				}
			
		}
		
	}
	
	function review(pageNum){
		$.ajax({
			url: "${pageContext.request.contextPath }/members/reviewList",
			type:"get",
			data:{"spageNum":pageNum},
			dataType:"json",
			success: function(data){
				$("#content").empty();
				$("#page").empty();
				
				let html = `
					 <table class="table" style="width: 1110px; text-align: center">
					<tr>
					<th>리뷰 사진</th>
					<th>제목 </th>
					<th>내용</th>
					<th>별점</th>
					<th>날짜</th>
					<th>상품명</th>
					<th>색상</th>
					<th>사이즈</th>
					<th>답글</th>
					
					<th>삭제</th>
					</tr>
				`;
				
				$(data.list).each(function(i,d){
					let rb_num = d.rb_num
					let rb_title = d.rb_title;
					let rb_content = d.rb_content;
					let m_id = d.m_id;
					let rb_stars = d.rb_stars;
					let rb_saveimg = d.rb_saveimg;
					let rb_date = d.rb_date;
					let g_name = d.g_name;
					let c_colorname = d.c_colorname;
					let sz_sizename = d.sz_sizename
					let rp_content = d.rp_content
					
					html+= `
						<tr>
						
						<td>`+rb_saveimg+`</td>
						<td>`+rb_title+`</td>
						<td>`+rb_content+`</td>
						<td>`+rb_stars+`</td>
						<td>`+rb_date+`</td>
						<td>`+rb_stars+`</td>
						<td>`+g_name+`</td>
						<td>`+rb_stars+`</td>
						<td>`+c_colorname+`</td>
						<td>`+sz_sizename+`</td>
						<td>`+rp_content+`</td>
						
						<td class="text-center"><a class="remove-from-cart" href="javascript:deleteReview(`+rb_num+`);" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash" style="color : #d80a54"></i></a></td>
						</tr>
					`
				});
				$("#content").append(html+"</table>");
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
						str = str +"<a href = 'javascript:review("+i+")' >" +"<span style='color:black;'>"+[i] +"</span>"+"</a>";
					}else{
						str = str +"<a href = 'javascript:review("+i+")'>" +"<span style='color:gray;'>"+[i] +"</span>"+"</a>";
						
					}
				}
				if(endPageNum<data.pu.totalPageCount){
					str +="<a href='javascript:review("+(endPageNum+1)+")'>다음</a>";
				}
				$("#page").append(str);

				
				}
			
			
			
		})
	}
	
	
</script>
</body>
</html>