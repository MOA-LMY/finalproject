<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- navbar -->
    <nav class="navbar navbar-expand-md navbar-light">
    	<button class="navbar-toggler ml-auto mb-2 bg-light" type="button" data-toggle="collapse" data-target="#sidebar">
    		<span class="navbar-toggle-icon"></span>
    	</button>
    	<div class="collapse navbar-collapse" id="sidebar">
	    	<div class="container-fluid">
	    		<div class="row">
	    		
	    			<!-- sidebar -->
	    			<div class="col-xl-2 col-lg-3 sidebar fixed-top">
	    				<a href="${pageContext.request.contextPath}/" class="navbar-brand text-white text-center d-block mx-auto py-3 mb-4 
	    				bottom-border">Logo</a>
	    			<ul class="navbar-nav flex-column mt-4">
	    				<li class="nav-item">
	    					<a href="${pageContext.request.contextPath}/admin/" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-home text-white fa-lg mr-3"></i>메인
	    					</a>
	    				</li>
	    				<li class="nav-item">
	    					<a href="${pageContext.request.contextPath}/admin/members" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-user text-white fa-lg mr-3"></i>일반회원 관리
	    					</a>
	    					<!-- 
	    					<div class="dropdown">
	    					<a href="#" class="nav-link text-white p-3 mb-2 dropdown-menu">일반회원</a>
	    					<a href="#" class="nav-link text-white p-3 mb-2 dropdown-menu">파트너사</a>
	    					</div>
	    					 -->
	    				</li>
	    				<li class="nav-item">
	    					<a href="${pageContext.request.contextPath}/admin/partners" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-handshake text-white fa-lg mr-3"></i>파트너사 관리
	    					</a>
	    				</li>
	    				<li class="nav-item">
	    					<a href="${pageContext.request.contextPath}/admin/goods_insert" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-shopping-cart text-white fa-lg mr-3"></i>상품 등록
	    					</a>
	    				</li>
	    				<li class="nav-item">
	    					<a href="${pageContext.request.contextPath}/admin/goods_list" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-dolly text-white fa-lg mr-3"></i>재고 관리
	    					</a>
	    				</li>
	    				<li class="nav-item">
	    					<a href="${pageContext.request.contextPath}/admin/order_list" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-truck text-white fa-lg mr-3"></i>주문/배송 관리
	    					</a>
	    				</li>
	    				<li class="nav-item">
	    					<a href="${pageContext.request.contextPath}/admin/board_question" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-envelope text-white fa-lg mr-3"></i>문의 관리
	    					</a>
	    				</li>
	    				<li class="nav-item">
	    					<a href="${pageContext.request.contextPath}/admin/board_review" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-hand-holding-heart text-white fa-lg mr-3"></i>리뷰 관리
	    					</a>
	    				</li>
	    				<li class="nav-item">
	    					<a href="#" class="nav-link text-white p-3 mb-2 current">
	    						<i class="fas fa-chart-line text-white fa-lg mr-3"></i>매출 관리
	    					</a>
	    				</li>
	    			</ul>
	    			</div>
	    			<!-- end of sidebar -->
	    			
	    			
	    			<!-- top navbar -->
	    			<div class="col-xl-10 col-lg-9 ml-auto bg-dark fixed-top py-2 top-navbar">
	    				<div class="row align items-center">
	    				
	    					<div class="col-md-4">
	    						<h4 class="text-light text-uppercase mb-0">Admin Page</h4>
	    					</div>
	    					
	    					<div class="col-md-5">
	    						<form action="">
	    							<div class="input-group">
	    								<input type="text" class="form-control search-input" placeholder="검색기능 살릴거면 넣고 아니면 빼기" style="color:#f6f6f6;">
	    								<button type="button" class="btn btn-light search-button">
	    									<i class="fas fa-search text-danger"></i>
	    								</button>
	    							</div>
	    						</form>
	    					</div>
	    					
	    					<div class="col-md-3">
	    						<ul class="navbar-nav">
		    						<li class="nav-item">
		    							<a href="#" class="nav-link">
		    								<i class="fas fa-comments text-muted fa-lg"></i>
		    							</a>
		    						</li>
		    						<li class="nav-item">
		    							<a href="#" class="nav-link">
		    								<i class="fas fa-comments text-muted fa-lg"></i>
		    							</a>
		    						</li>
		    						<li class="nav-item">
		    							<a href="#" class="nav-link">
		    								<i class="fas fa-comments text-muted fa-lg"></i>
		    							</a>
		    						</li>
		    						<li class="nav-item ml-md-auto">
		    							<a href="#" class="nav-link" data-toggle="modal" data-target="#sign-out">
		    								<i class="fas fa-sign-out-alt text-danger fa-lg"></i>
		    							</a>
		    						</li>
	    						</ul>
	    					</div>
	    					
	    				</div>
	    			</div>
	    			<!-- end of top navbar -->
	    			
	    		</div>
	    	</div>
	    </div>
    </nav>
    <!-- end of navbar -->
    
    
    <!-- modal -->
    <div class="modal fade" id="sign-out">
    	<div class="modal-dialog">
    		<div class="modal-content">
    			<div class="modal-header">
    				<h4 class="modal-title">Logout</h4>
    				<button type="button" class="close" data-dismiss="modal">&times;</button>
    			</div>
    			<div class="modal-body">
    				로그아웃 하시겠습니까?
    			</div>
    			<div class="modal-footer">
    				<button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
    				<button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button>
    			</div>
    		</div>
    	</div>
    </div>
	
  </body>
</html>