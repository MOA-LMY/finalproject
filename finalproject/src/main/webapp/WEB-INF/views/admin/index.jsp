<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<title>ADMIN PAGE</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
	<!-- 폰트적용 Montserrat -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap">
	<!-- 폰트적용 Hahmlet -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap">
	<!-- style.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
		
  </head>
  <body>
	<!-- sidebar -->
  	<jsp:include page="sidebar.jsp"/>
    
    <!-- Card Section -->
    <section>
    	<div class="container-fluid setting-font">
    		<div class="row">
    			<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
    				<div class="row pt-md-5 mt-md-3 mb-5">
    				
    					<!-- 카트모양 -->
    					<div class="col-xl-3 col-sm-6 p-2">
    						<div class="card card-common">
    							<div class="card-body">
    								<div class="d-flex justify-content-between">
    									<i class="fas fa-chart-line fa-3x text-primary"></i>
    									<div class="text-right text-secondary">
    										<h5>매출</h5>
    										<h3>135,000 ￦</h3>
    									</div>
    								</div>
    							</div>
    							<div class="card-footer text-secondary">
    								<i class="fas fa-sync mr-3"></i>
    								<span>업데이트</span>
    							</div>
    						</div>
    					</div>
    					
    					<!-- 강아지발바닥 -->
    					<div class="col-xl-3 col-sm-6 p-2">
    						<div class="card card-common">
    							<div class="card-body">
    								<div class="d-flex justify-content-between">
    									<i class="fas fa-paw fa-3x text-warning"></i>
    									<div class="text-right text-secondary">
    										<h5>방문수</h5>
    										<h3>135,790 회</h3>
    									</div>
    								</div>
    							</div>
    							<div class="card-footer text-secondary">
    								<i class="fas fa-sync mr-3"></i>
    								<span>업데이트</span>
    							</div>
    						</div>
    					</div>
    					
    					<!-- 사람모양 -->
    					<div class="col-xl-3 col-sm-6 p-2">
    						<div class="card card-common">
    							<div class="card-body">
    								<div class="d-flex justify-content-between">
    									<i class="fas fa-users fa-3x text-info"></i>
    									<div class="text-right text-secondary">
    										<h5>가입 회원</h5>
    										<h3>12,000 명</h3>
    									</div>
    								</div>
    							</div>
    							<div class="card-footer text-secondary">
    								<i class="fas fa-sync mr-3"></i>
    								<span>업데이트</span>
    							</div>
    						</div>
    					</div>
    					
    					<!-- 하트모양 -->
    					<div class="col-xl-3 col-sm-6 p-2">
    						<div class="card card-common">
    							<div class="card-body">
    								<div class="d-flex justify-content-between">
    									<i class="fas fa-hand-holding-heart fa-3x text-success"></i>
    									<div class="text-right text-secondary">
    										<h5>후기 등록</h5>
    										<h3>12,000 건</h3>
    									</div>
    								</div>
    							</div>
    							<div class="card-footer text-secondary">
    								<i class="fas fa-sync mr-3"></i>
    								<span>업데이트</span>
    							</div>
    						</div>
    					</div>
    					    					
    				</div>
    			</div>
    		</div>
    	</div>
    </section>
    <!-- end of Card Section -->
    
    
	<!-- table -->
	<section>
		<div class="container-fluid setting-font">
			<div class="row mb-5">
				<div class="col-xl-10 col-lg-9 col-md-8 ml-auto">
					<div class="row align-items-center"> 
						<div class="col-xl-6 col-12 mb-xl-0">
							<h3 class="text-muted text-center mb-3">최근 문의</h3>
							<table class="table bg-light text-center">
								<thead>
									<tr class="text-muted">
										<th>글번호</th>
										<th>제목</th>
										<th>내용</th>
										<th>작성일</th>
										<th>답변상태</th>
									</tr>
								</thead>
								
								<!-- forEach -->
								<tbody>
									<tr>
										<td>1</td>
										<td>배송문의</td>
										<td>강아지 사료 언제 배송되는건지 알고...</td>
										<td>2021-08-01</td>
										<td><button type="button" class="btn btn-danger btn-sm">답변하기</button></td>
									</tr>
									<tr>
										<td>2</td>
										<td>배송문의</td>
										<td>강아지 사료 언제 배송되는건지 알고...</td>
										<td>2021-08-01</td>
										<td><button type="button" class="btn btn-danger btn-sm">답변하기</button></td>
									</tr>
									<tr>
										<td>3</td>
										<td>배송문의</td>
										<td>강아지 사료 언제 배송되는건지 알고...</td>
										<td>2021-08-01</td>
										<td><button type="button" class="btn btn-danger btn-sm">답변하기</button></td>
									</tr>
									<tr>
										<td>4</td>
										<td>배송문의</td>
										<td>강아지 사료 언제 배송되는건지 알고...</td>
										<td>2021-08-01</td>
										<td><button type="button" class="btn btn-success btn-sm">답변완료</button></td>
									</tr>
									<tr>
										<td>5</td>
										<td>배송문의</td>
										<td>강아지 사료 언제 배송되는건지 알고...</td>
										<td>2021-08-01</td>
										<td><button type="button" class="btn btn-success btn-sm">답변완료</button></td>
									</tr>
								</tbody>
								<!-- end of forEach -->
								
							</table>
						
						<!-- 최근문의 페이징 
						<nav>
							<ul class="pagination justify-content-center">
								<li class="page-item">
									<a href="#" class="page-link py-2 px-3">
										<span>&laquo;</span>
									</a>
								</li>
								
								<!-- 페이지넘버 
								<li class="page-item active">
									<a href="#" class="page-link py-2 px-3">1</a>
								</li>
								<li class="page-item">
									<a href="#" class="page-link py-2 px-3">2</a>
								</li>
								<li class="page-item">
									<a href="#" class="page-link py-2 px-3">3</a>
								</li>
								
								<li class="page-item">
									<a href="#" class="page-link py-2 px-3">
										<span>&raquo;</span>
									</a>
								</li>
								
							</ul>
						</nav>
						 최근문의 페이징 끝 -->
						</div>
						
						<div class="col-xl-6 col-12">
						<h4 class="text-muted text-center mb-2">최근 등록된 리뷰</h4>
							<div id="accordion">
								<div class="card">
									<div class="card-header">
										<button class="btn btn-block bg-secondary text-light text-left" data-toggle="collapse" data-target="#collapseOne">
											좋아요 좋아요 좋아요
										</button>
									</div>
									<div class="collapse show" id="collapseOne" data-parent="#accordion">
										<div class="card-body">
											한국 여자 배구가 '배구 여제' 김연경을 앞세워 '숙적' 일본을 물리치고 도쿄올림픽 8강 진출을 확정했습니다.
											배구 여자 대표팀은 31일 저녁 일본 도쿄 아리아케 아레나에서 열린 2020 도쿄올림픽 여자 배구 A조 조별리그 4차 전 일본과의 경기에서 5세트까지 가는 혈투 끝에 세트 스코어 3-2로 꺾고, 최소 3위 자리를 확보하며 8강 진출을 확정했습니다.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<button class="btn btn-block bg-secondary text-light text-left" data-toggle="collapse" data-target="#collapseTwo">
											좋아요 좋아요 좋아요
										</button>
									</div>
									<div class="collapse" id="collapseTwo" data-parent="#accordion">
										<div class="card-body">
											한국 여자 배구가 '배구 여제' 김연경을 앞세워 '숙적' 일본을 물리치고 도쿄올림픽 8강 진출을 확정했습니다.
											배구 여자 대표팀은 31일 저녁 일본 도쿄 아리아케 아레나에서 열린 2020 도쿄올림픽 여자 배구 A조 조별리그 4차 전 일본과의 경기에서 5세트까지 가는 혈투 끝에 세트 스코어 3-2로 꺾고, 최소 3위 자리를 확보하며 8강 진출을 확정했습니다.
										</div>
									</div>
								</div>
								<div class="card">
									<div class="card-header">
										<button class="btn btn-block bg-secondary text-light text-left" data-toggle="collapse" data-target="#collapseThree">
											좋아요 좋아요 좋아요
										</button>
									</div>
									<div class="collapse" id="collapseThree" data-parent="#accordion">
										<div class="card-body">
											한국 여자 배구가 '배구 여제' 김연경을 앞세워 '숙적' 일본을 물리치고 도쿄올림픽 8강 진출을 확정했습니다.
											배구 여자 대표팀은 31일 저녁 일본 도쿄 아리아케 아레나에서 열린 2020 도쿄올림픽 여자 배구 A조 조별리그 4차 전 일본과의 경기에서 5세트까지 가는 혈투 끝에 세트 스코어 3-2로 꺾고, 최소 3위 자리를 확보하며 8강 진출을 확정했습니다.
										</div>
									</div>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end of table -->
	
	
	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js' integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
	<!-- script.js -->
	<script src='${pageContext.request.contextPath}/resources/admin/js/script.js'></script>

  </body>
</html>