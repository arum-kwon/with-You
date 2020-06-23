<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<form id="sNoFrm" name="sNoFrm" action="applyDetail.do" method="post"> 
		<c:forEach var="list" items="${applyList }">
		<div class="col-xl-6 col-md-12 col-sm-12" >
			<br> 
			<img src="uploadProfile/${view.profile }" id="viewProfile" class="rounded-circle" width="100" height="100">
			${list.helperName} 님<br/>
			요청서비스날짜 : ${list.serviceDate }<br/>
			요청서비스시간 : ${list.serviceStartTime }시부터 ~ ${list.serviceEndTime }시까지<br/>
			<div></div>
		</div>
		<div class="col-xl-6 col-md-12 col-sm-12" id="centerDiv">
		<div><br/></div>
			배치대기 버튼<div><br/></div>
			<button type="button" id="btnLikeList" class="btn btn-light" onclick="getServiceNo('${list.serviceNo}')">상세내역</button><div><br/></div>
			<button type="button" id="btnChat" class="btn btn-dark" onclick="location.href='#'">채팅</button><div><br/></div>
		</div>
		</c:forEach>
		
		<input type="hidden" id="serviceNo" name="serviceNo">
	</form>
</div>


<script type="text/javascript">
	function getServiceNo(key) {
		document.sNoFrm.serviceNo.value=key;
		console.log(key);
		document.sNoFrm.submit();
	}
</script>

</body>
</html>