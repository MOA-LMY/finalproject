<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function reservList(){
		let xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4 && xhr.status == 200){
				let list = xhr.responseText;
				alert(list);
			}
		}
		xhr.open("get", "${pageContext.request.contextPath}/partners/reservation", true);
		xhr.send();
	}
</script>
<!-- 
	**int rnum = ~~가지고 오는 코드
	function updateList(r_num){
		let xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4 && xhr.status == 200){
				alert("업데이트 되었습니다.");
			}
		}
		xhr.open("get", "${pageContext.request.contextPath}/partners/reservationUpdate", true);
		xhr.send(r_num);
	}
 -->
</head>
<body>
	<a href="#" onclick="reservList()">list</a>
	<a href="#" onclick="updateList()">업데이트 버튼으로 바꾸기</a>
</body>
</html>