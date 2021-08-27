<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.cd-item-info table {
	width: 300px;
	border-collapse: separate;
	text-align: center;
	height: 120px;
	border-radius: 10px;
	border-style: hidden;
	border: 1px solid #BDBDBD;
}

.cd-item-info td {
	vertical-align: middle;
}
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/petlist/css/reset.css">
<!-- CSS reset -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/petlist/css/style.css">
<!-- Resource style -->
<script
	src="${pageContext.request.contextPath }/resources/petlist/js/modernizr.js"></script>
<!-- Modernizr -->
<script
	src="${pageContext.request.contextPath }/resources/petlist/js/jquery-2.1.1.js"></script>

<!-- datepicker -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<title>Product Quick View | CodyHouse</title>
</head>
<body>
	<header>
		<h1>Pet List</h1>
	</header>

	<ul class="cd-items cd-container">
		<c:forEach var="vo" items="${petlist}">
			<li class="cd-item"><img
				src="${pageContext.request.contextPath }/resources/img/pet/${vo.pet_saveimg}"
				alt="${vo.pet_saveimg}"> <a href="#0" class="cd-trigger"
				onclick="javascript:set('${vo.pet_num }','${vo.pet_content}','${vo.pet_name}','${vo.pet_age}','${vo.pet_color }','${vo.pet_price}','${vo.pet_type }','${vo.pt_id }')">Quick
					View</a></li>
		</c:forEach>
		<!-- cd-item -->

	</ul>
	<div style="text-align: center">
		<c:forEach var="i" begin="${pu.startPageNum }" end="${pu.endPageNum }">
			<c:choose>
				<c:when test="${pu.pageNum==i }">
					<a
						href="${pageContext.request.contextPath}/pet/petlist?spageNum=${i }&field=${field}&keyword=${keyword}">
						<span style="color: blue; font-weight: bold">[${i }]</span>
					</a>
				</c:when>
				<c:otherwise>
					<a
						href="${pageContext.request.contextPath}/pet/petlist?spageNum=${i }&field=${field}&keyword=${keyword}">
						<span style="color: gray">[${i }]</span>
					</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
	<div style="text-align: center">
		<form method="get"
			action="${pageContext.request.contextPath}/pet/petlist">
			<select name="field">
				<option value="pet_type"
					<c:if test="${field=='pet_type' }">selected</c:if>>종류</option>
				<option value="pet_name"
					<c:if test="${field=='pet_name' }">selected</c:if>>이름</option>
				<option value="pt_id"
					<c:if test="${field=='pt_id' }">selected</c:if>>파트너사</option>
			</select> <input type="text" name="keyword" value=${keyword }> <input
				type="submit" value="검색">
		</form>
	</div>
	<div class="cd-quick-view">
		<div class="cd-slider-wrapper">
			<ul class="cd-slider">
				<c:forEach var="vo" items="${petlist}">
					<li class="selected"><img style="width: 400px; height: 400px;"
						src="${pageContext.request.contextPath }/resources/img/pet/${vo.pet_saveimg}"
						alt="Product 1"></li>
				</c:forEach>

			</ul>
			<!-- cd-slider -->
		</div>
		<!-- cd-slider-wrapper -->
		<div class="cd-item-info" style="text-align: center">
			<h2 id="name"></h2>
			<br>
			<table style="margin-right: auto; margin-left: auto;">
				<tr>
					<td>type</td>
					<td><span id="type"></span></td>
				</tr>
				<tr>
					<td>age</td>
					<td><span id="age"></span></td>
				</tr>
				<tr>
					<td>color</td>
					<td><span id="color"></span></td>
				</tr>
				<tr>
					<td>price</td>
					<td><span id="price"></span></td>
				</tr>
				<tr>
					<td>partner</td>
					<td><span id="id"></span></td>
				</tr>






			</table>

			<p id="content" style="height: 120px;"></p>
				<ul class="cd-item-action">
					<li><input style="" type="date" name="date" id="date"
						readonly="readonly">
						<button id="libutton" class="add-to-cart">방문 예약하기</button></li>
					<br>
					<li id="li"></li>

				</ul>
				<!-- cd-item-action -->
		</div>
		<!-- cd-item-info -->
		<a href="#0" class="cd-close">Close</a>

	</div>
	<!-- cd-quick-view -->



	<script
		src="${pageContext.request.contextPath }/resources/petlist/js/velocity.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/petlist/js/main.js"></script>
	<!-- Resource jQuery -->
	<script type="text/javascript">
	function set(num,content,name,age,color,price,type,id){
		$("#name").empty();
		$("#content").empty();
		$("#age").empty();
		$("#color").empty();
		$("#price").empty();
		$("#type").empty();
		$("#id").empty();
		
		$("#name").append(name);
		$("#content").append(content);
		$("#age").append(age);
		$("#price").append(price);
		$("#color").append(color);
		$("#type").append(type);
		$("#id").append(id);
		$("#li").append(`
				<input type="hidden" id="pet_num" value=`+num+`>
				`)
		console.log(num);
		console.log(content);
		console.log(name);
		console.log(age);
		console.log(color);
		console.log(price);
		console.log(type);
		console.log(id);
		
	}
	var d = new Date();
	let year = d.getFullYear();
	let month = d.getMonth()+1;
	let dat = d.getDate();
	let today = year+"-"+month+"-"+dat;
	let maxday = year+"-"+(month+1)+"-"+dat;
	console.log(today);
	$("#date").datepicker({
		changeMonth:true,
		changeYear: true,
		minDate: new Date(today),
		maxDate: new Date(maxday),
		prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        dateFormat: 'yy-mm-dd'

	});
	var header = '${_csrf.headerName}';
	var token = '${_csrf.token}';


	console.log(token);
	console.log(header)
	$("#libutton").click(function() {
			var id='${id}';
			let date = $("#date").val();
			if(date==""){
				console.log("a");
				alert("날짜를 입력해주십시오");
				
			}else{
				
				 if(id=='anonymousUser') {
				        alert("로그인 후 이용해 주세요")
				 }else{
					 
				
			console.log(date);
			console.log("header :" +header)
			let pet_num = $("#pet_num").val();
			console.log(pet_num);
				 $.ajax({
					url:'${pageContext.request.contextPath}/reservation/insert',
					data:{"date":date ,"pet_num":pet_num},
					type:"post",
					dataType:"json",
					beforeSend : function(xhr)
		            {   
						xhr.setRequestHeader(header, token);
		            },
					success: function(data){
						if(data.result =="success"){
							alert("예약 완료!");
							location.href = "${pageContext.request.contextPath}/pet/petlist"
						}else{
							alert("예약 실패");
						}
						}
					}); 
				
				}
			}
	})
	
	
	
	</script>
</body>
</html>