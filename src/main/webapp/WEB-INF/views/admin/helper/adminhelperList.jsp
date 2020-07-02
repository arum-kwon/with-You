<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

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

		document.frm.mId.value=key;

		console.log(key);

		document.frm.submit();

	}

</script>

</head>

<body>
	<div align="center">

		<h1>간병인 회원</h1>

		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col"><input type="checkbox" aria-label="Checkbox for following text input"></th>
		      <th scope="col">번호</th>
		      <th scope="col">이름</th>
		      <th scope="col">생년월일</th>
		      <th scope="col">성별</th>
		      <th scope="col">전화번호</th>
		      <th scope="col">이메일</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<c:forEach items="${ helperlist }" var="list" varStatus="status">
			    <tr>
			      <th scope="row"><input type="checkbox" aria-label="Checkbox for following text input"></th>
			      <td>${ list.helperNo }</td>
			      <td>${ list.helperName }</td>
			      <td>${ list.helperBirth }</td>
			      <td>${ list.helperSex }</td>
			      <td>${ list.helperTel }</td>
			      <td>${ list.helperEmail }</td>
			    </tr>
		    </c:forEach>
		  </tbody>
		</table>

<c:forEach items="${ helperlist }" var="list">
	<%-- ${ list.helperNo }
	${ list.helperName }
	${ list.helperBirth }
	${ list.helperSex }
	${ list.helperTel }	
	${ list.helperEmail }	
	${ list.helperPw }	 
	${ list.helperWorkArea }	
	${ list.helperStartTime }	
	${ list.helperEndTime }	
	${ list.helperUnique }	
	${ list.helperAddr }	
	${ list.helperProfile }	
	${ list.commissionGrade }	
	<br>
	<br>--%>
</c:forEach>

		<div>
			<button type="button" class="btn btn-primary"
				onclick="location.href='./adminpatientList.do'">환자로 이동</button>
			<button type="button" class="btn btn-primary"
				onclick="location.href='./adminfamilyList.do'">보호자로 이동</button>
				</div>

	</div>

	

</body>

</html>