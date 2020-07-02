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

		<h1>결제 관리</h1>

		<table class="table">
			<thead>
				<tr>
					<th scope="col"><input type="checkbox"
						aria-label="Checkbox for following text input"></th>
					<th scope="col">주문 고유번호</th>
					<th scope="col">상점 거래정</th>
					<th scope="col">승인번호</th>
					<th scope="col">가격</th>
					<th scope="col">보호자 등록번호</th>
					<th scope="col">서비스 등록번호</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ paylist }" var="list" varStatus="status">
					<tr>
						<th scope="row"><input type="checkbox"
							aria-label="Checkbox for following text input"></th>
						<td>${ list.imp_Uid }</td>
						<td>${ list.merchant_Uid }</td>
						<td>${ list.apply_Num }</td>
						<td>${ list.paid_Amount }</td>
						<td>${ list.familyNo }</td>
						<td>${ list.serviceNo }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<c:forEach items="${ paylist }" var="list">


		</c:forEach>
		<!-- <div>
			<button type="button" class="btn btn-primary"
				onclick="location.href='./adminhelperList.do'">간병인으로 이동</button>
			<button type="button" class="btn btn-primary"
				onclick="location.href='./adminfamilyList.do'">보호자로 이동</button>
		</div> -->
</body>

</html>