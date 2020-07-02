<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Chewy&family=Jua&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
.btn , .text{
	width:50%;
	font-family:'Jua',sans-serif;
	font-size:17px;
}
.text {
	text-align:left;
}
.w3-row {
	margin:30px;
	line-height: 34px
}
.w3-col{
	font-family:'Do Hyeon', sans-serif;
	font-size: 17px;
}
</style>
</head>
<body>
<form id="sNoFrm" name="sNoFrm" action="serviceDetail.do" method="post">
		<c:forEach var="list" items="${serviceList }">
			<div class="w3-row">
				<div class="w3-col w3-container m6 s6" align="center">
					<img src="uploadProfile/no.jpg"
						onerror='this.src="resources/img/no_image.png"' id="viewProfile"
						class="rounded-circle" width="95" height="100">&nbsp;&nbsp;
				</div>
				<div class="w3-col w3-container m6 s6 text">
					${list.familyName} 님<br /> 요청서비스날짜 : ${list.serviceDate }<br />
					요청서비스시간 : ${list.serviceStartTime }시부터 ~ ${list.serviceEndTime }시까지<br />
				</div>
				
					<br>
					<div align="right">
					<button type="button" id="btnLikeList" class="btn btn-light"
						onclick="getServiceNo('${list.serviceNo}')">상세내역</button>
					</div>
			</div>

			<div align="right" class="" id="centerDiv"></div>
			<br>
		</c:forEach>

		<input type="hidden" id="serviceNo" name="serviceNo">
</form>

<script type="text/javascript">
	function getServiceNo(key) {
		document.sNoFrm.serviceNo.value=key;
		console.log(key);
		document.sNoFrm.submit();
	}
</script>

</body>
</html>