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

		<h1>보호자 회원</h1>

		<table class="table">
			<head>
				<tr>
					<th scope="col"><input type="checkbox"
						aria-label="Checkbox for following text input"></th>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">생년월일</th>
					<th scope="col">주소</th>
					<th scope="col">전화번호</th>
					<th scope="col">이메일</th>
					<th scope="col">가입일자</th>
					<th scope="col">환자등록번호</th>
				</tr>
			</head>
		
	
			<body>
				<c:forEach items="${ familylist }" var="list" varStatus="status">
					<tr>
						<th scope="row"><input type="checkbox"
							aria-label="Checkbox for following text input"></th>
						<td>${ list.familyNo }</td>
						<td>${ list.familyName }</td>
						<td>${ list.familyBirth }</td>
						<td>${ list.familyAddr }</td>
						<td>${ list.familyTel }</td>
						<td>${ list.familyEmail }</td>
						<td>${ list.familyJoinDate }</td>
						<td>${ list.patientNo }</td>
					</tr>    
				</c:forEach>
			</body>
		</table>

		<c:forEach items="${ familylist }" var="list">

		</c:forEach>


<button type="button" class="btn btn-primary"
				onclick="location.href='./adminpatientList.do'">환자로 이동</button>
			<button type="button" class="btn btn-primary"
				onclick="location.href='./adminhelperList.do'">간병인으로 이동</button>
	</div>

</body>
</head>
</html>