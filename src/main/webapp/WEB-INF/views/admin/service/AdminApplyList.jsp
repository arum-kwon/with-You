<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<style>
#listDiv {
	width: 300px;
}
</style>

<script type="text/javascript">
	function selectOne(key) {

		document.frm.mId.value = key;

		console.log(key);

		document.frm.submit();

	}
</script>

</head>

<body>
	<div align="center">

		<h1>서비스신청/이력</h1>

		<table class="table">
			<thead>
				<tr>
					<th scope="col"><input type="checkbox"
						aria-label="Checkbox for following text input"></th>
					<th scope="col">서비스 등록번호</th>
					<th scope="col">돌봄시작 시간</th>
					<th scope="col">돌봄종료 시간</th>
					<th scope="col">돌봄 날짜</th>
					<th scope="col">결제 금액</th>
					<th scope="col">수령 금액</th>
					<th scope="col">서비스처리 상태</th>
					<th scope="col">요구 사항</th>
					<th scope="col">신청 날짜</th>
					<th scope="col">환자 등록번호</th>
					<th scope="col">간병인 등록번호</th>
					<th scope="col">서비스 지역</th>
					<th scope="col">보호자 등록번호</th>
					<th scope="col">실제 출근시간</th>
					<th scope="col">실제 퇴근시간</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ applylist }" var="list" varStatus="status">
					<tr>
						<th scope="row"><input type="checkbox"
							aria-label="Checkbox for following text input"></th>
						<td>${ list.serviceNo }</td>
						<td>${ list.serviceStartTime }</td>
						<td>${ list.helperPrice }</td>
						<td>${ list.serviceStatus }</td>
						<td>${ list.serviceEndTime }</td>
						<td>${ list.servicePrice }</td>
						<td>${ list.serviceDate }</td>
						<td>${ list.serviceDemand }</td>
						<td>${ list.helperNo}</td>
						<td>${ list.patientNo }</td>
						<td>${ list.applyDate }</td>
						<td>${ list.serviceArea }</td>
						<td>${ list.familyNo }</td>
						<td>${ list.realStartTime }</td>
						<td>${ list.realEndTime }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<%--	<c:forEach items="${applylist }" var="list">


		 </c:forEach>
		<div>
			<button type="button" class="btn btn-primary"
				onclick="location.href='./adminhelperList.do'">간병인으로 이동</button>
			<button type="button" class="btn btn-primary"
				onclick="location.href='./adminfamilyList.do'">보호자로 이동</button>
		</div> --%>
</body>

</html>