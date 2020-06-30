<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.btn {
	width:60%;
}
.text {
	text-align:left;
}
.w3-row {
	margin:30px;
	line-height: 34px
}
</style>
<script>
// 보호자가 간병인에게 전화 걸기
	function callToHelper(num) {
		location.href = "tel:" + num;	
}
	
</script>
</head>
<body>


<form id="sNoFrm" name="sNoFrm" action="applyDetail.do" method="post">
		<c:forEach var="list" items="${applyList }">
			<div class="w3-row">
				<div class="w3-col w3-container m2 s2" align="center">
					<img src="${pageContext.request.contextPath}/resources/upload/${list.helperProfile}"
						onerror='this.src="resources/img/no_image.png"' id="viewProfile"
						class="rounded-circle" width="100" height="100">&nbsp;&nbsp;
				</div>
				<div class="w3-col w3-container m6 s6 text">
					${list.helperName} 님<br /> 요청서비스날짜 : ${list.serviceDate }<br />
					요청서비스시간 : ${list.serviceStartTime }시부터 ~ ${list.serviceEndTime }시까지 <br />
				</div>
				<div class="w3-col w3-container m4 s4" align="center">
					<c:choose>
						<c:when test="${list.serviceStatus eq 'S01'}">
							<button type="button" id="btnServiceReady" class="btn btn-info"
								disabled>수락대기</button>
							<br>
						</c:when>
						<c:when test="${list.serviceStatus eq 'S02'}">
							<button type="button" id="btnPayReady" class="btn btn-primary"
								disabled>결제대기</button>
							<br>
						</c:when>
						<c:when test="${list.serviceStatus eq 'S03'}">
							<button type="button" id="btnPayDone" class="btn btn-success"
								disabled>결제완료</button>
							<br>
						</c:when>
						<c:when test="${list.serviceStatus eq 'S04'}">
							<button type="button" id="btnServiceDone" class="btn btn-dark"
								disabled>서비스종료</button>
							<br>
						</c:when>
						<c:otherwise>
							<button type="button" id="btnReject" class="btn btn-warning"
								disabled>수락거부</button>
							<br>
						</c:otherwise>
					</c:choose>
					<button type="button" id="btnLikeList" class="btn btn-light"
						onclick="getServiceNo('${list.serviceNo}')">상세내역</button>
					<br> 
					<c:choose>
						<c:when test="${list.serviceStatus eq 'S01' || list.serviceStatus eq 'S02' || list.serviceStatus eq 'S03' }">
							<a onclick="callToHelper('${list.helperTel}')"> 
								<img src="${pageContext.request.contextPath}/resources/img/chat/callToHelper.png" style="height: 42px" />
							</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
							<a href="javascript:void(0);" onclick="chatPage('${list.helperNo}');"> 
								<img src="${pageContext.request.contextPath}/resources/img/chat/chat.png" style="height: 42px" />
							</a>
						</c:when>
					</c:choose>
				</div>
			</div>

			<div align="right" class="" id="centerDiv"></div>
			<br>
		</c:forEach>

		<input type="hidden" id="serviceNo" name="serviceNo">
		<input type="hidden" id="helperNo" name="helperNo">
</form>

	<button type="button" name="main" onclick="location.href='familyMain.do'">메인</button>



<script type="text/javascript">
	//상세내역으로 가는 함수
	function getServiceNo(key) {
		document.sNoFrm.serviceNo.value=key;
		document.sNoFrm.helperNo.value=0;
		console.log(key);
		document.sNoFrm.submit();
	}
	
	//채팅페이지로 가는 함수
	function chatPage(key) {
		document.sNoFrm.helperNo.value=key;
		console.log(key);
		document.sNoFrm.action="chat.do";
		document.sNoFrm.submit();
	}
</script>

</body>
</html>