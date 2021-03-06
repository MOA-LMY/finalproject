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

<div class="container padding-bottom-3x mb-1">
    <!-- Alert-->
    <div class="alert alert-dismissible fade show text-center" style="margin-bottom: 30px;border: 1px solid black;"><span class="alert-close" data-dismiss="alert"></span><h1>Partners Page</h1>&nbsp;&nbsp;With this purchase you will earn <strong>290</strong> Reward Points.</div>
    <!-- Shopping Cart-->
    <div class="table-responsive shopping-cart">
        <table class="table" style="width: 1110px; text-align: center">

            <tbody>
                <tr>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="${pageContext.request.contextPath }/partners/petlist"><img src="${pageContext.request.contextPath }/resources/img/mypage/dog001.png" alt="Adopted " style="width:150px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="${pageContext.request.contextPath }/partners/petlist">Sharing</a></h4><span><em>Enabled :</em> 1</span>
                            </div>
                        </div>
                    </td>

                    <td> <div class="product-item">
                            <a class="product-thumb" href="${pageContext.request.contextPath }/partners/editInfo">
                            <img src="${pageContext.request.contextPath }/resources/img/mypage/edit-user-512.png" alt="Edit" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="${pageContext.request.contextPath }/partners/editInfo">Edit Info</a></h4>
                            </div>
                        </div></td>
                    <td> <div class="product-item">
                            <a class="product-thumb" href="#"><img src="${pageContext.request.contextPath }/resources/img/mypage/Qna001.png" alt="Qna" style="width:150px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="#">1:1 Question</a></h4>
                                <span><em>recent :</em> 2</span>
                            </div>
                        </div></td> 
                </tr>
                <tr>
                    <td>
                        <div class="product-item">
                            <a class="product-thumb" href="javascript:reservation(1);"><img src="${pageContext.request.contextPath }/resources/img/mypage/reservation.png" alt="Reservation" style="width:110px; height:90px;"></a>
                            <div class="product-info">
                                <h4 class="product-title"><a href="javascript:reservation(1);">Reservation</a></h4><span><em>Now:</em> 0</span>
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
                    <td class="text-center">???</td>
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
                    <td class="text-center">???</td>
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash"></i></a></td>
                </tr>
                -->
            </tbody>
        </table>
        	<div id="content" class="table-responsive shopping-cart">
		<!-- <table class="table" style="width: 1110px; text-align: center">
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
                    <td class="text-center">???</td>
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="" data-original-title="Remove item"><i class="fa fa-trash"></i></a></td> --> 
			</tr>
		</table>
	</div>
	<div id="page"></div>
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
</body>
<script type="text/javascript">
	var pageNum='${pageNum}';
	if(pageNum==""){
		pageNum=1;
	}
	function reservation(pageNum){
		console.log(pageNum);
		$.ajax({
			url: "${pageContext.request.contextPath }/partners/reservationList",
			type:"get",
			data:{"spageNum":pageNum},
			dataType:"json",
			success: function(data){
				$("#content").empty();
				$("#page").empty();
				console.log(data);
				let html = `
					 <table class="table" style="width: 1110px; text-align: center">
					<tr>
					<th>????????? ???</th>
					<th>??????</th>
					<th>?????? ??????</th>
					<th>?????? ????????????</th>
					</tr>
				`;
				
				$(data.list1).each(function(i,d){
					console.log(d);
					let r_num = d.r_num;
					let r_process = d.r_proccess;
					let r_date = d.r_date;
					let m_id = d.m_id;
					let pt_id = d.pt_id;
					let pet_num = d.pet_num;
					let pet_name = d.pet_name;
					if(r_process==0){
						r_process="?????? ???";
					}else if(r_process==1){
						r_process="?????? ??????"
					}else{
						r_process="?????? ??????"
					}
					html+= `
						<tr>
						<td>`+pet_name+`</td>
						<td>`+m_id+`</td>
						<td>`+r_date+`</td>
						<td>`+r_process+`<button id="btn" onclick="procUpdate(`+r_num+`,'`+r_process+`')">??????</button><button id="btn" onclick="procMinus(`+r_num+`,'`+r_process+`')">??????</button></td>
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
					str +="<a href='javascript:list("+(startPageNum-1)+")'>??????</a>";
				}
				for(let i=startPageNum;i<=endPageNum;i++){
					if(pageNum==i){
						str = str +"<a href = 'javascript:reservation("+i+")' >" +"<span style='color:black;'>"+[i] +"</span>"+"</a>";
					}else{
						str = str +"<a href = 'javascript:reservation("+i+")'>" +"<span style='color:gray;'>"+[i] +"</span>"+"</a>";
						
					}
				}
				if(endPageNum<data.pu.totalPageCount){
					str +="<a href='javascript:list("+(endPageNum+1)+")'>??????</a>";
				}
				$("#page").append(str);

				
				}
			
			
			
		});
		
	}
	function procUpdate(r_num,r_process){
		if(r_process != "?????? ??????"){
			$.ajax({
				url: "${pageContext.request.contextPath }/partners/reservationUpdate",
				type:"get",
				data:{"r_num": r_num},
				dataType:"json",
				success: function(data){
					if(data != null){
						reservation(1);
					}
				}
			});
		}
	}
	function procMinus(r_num,r_process){
		if(r_process != "?????? ???"){
			$.ajax({
				url: "${pageContext.request.contextPath }/partners/reservationMinus",
				type:"get",
				data:{"r_num": r_num},
				dataType:"json",
				success: function(data){
					if(data != null){
						reservation(1);
					}
				}
			});
		}
	}
</script>

</html>