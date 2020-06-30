<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>서비스 신청 페이지</title>
</head>
<style>
 select { 
	/* 네이티브 외형 감추기 */ 
	-webkit-appearance: none; 
	-moz-appearance: none; 
	appearance: none; 
	background-color: white;
	/* 화살표 모양의 이미지 */ 
	background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; 
}
select::-ms-expand { 
/* IE 10, 11의 네이티브 화살표 숨기기 */ 
	display: none; 
}
select { 
	width: 200px; /* 원하는 너비설정 */ 
	padding: .8em .5em; /* 여백으로 높이 설정 */ 
	font-family: inherit; /* 폰트 상속 */ 
	background-color: white;
	background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */
    border: 2px solid white; 
    border-radius: 10px; 
    -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
    -moz-appearance: none; appearance: none; 
}

.main {
 	margin:30px;
}

</style>
<body>


<div><br/></div>
<div class="main" align="center">
	<form id="frm" action="searchHospital.do" method="post">
		<input type="text" name="search" size="15">
		<input type="submit" value="검색">
	</form>
	<table class="table table-hover">
		<tr class="table-light">
			<th>병원이름</th>
			<th>주소</th>
			<th>연락처</th>
			<th>병상</th>
			<th>돌봄종료시간</th>
			<th>돌봄종료시간</th>
			<th>돌봄종료시간</th>			
		</tr>
		<c:forEach var="list" items="${selectList}">
		<tr>
			<td scope="row"><img src="uploadProfile/${list.helperProfile }" onerror='this.src="resources/img/no_image.png"' id="viewProfile" class="" width="50" height="50"></td>
			<td scope="row">${list.HOSPITALNAME }</td>
			<td scope="row">${list.HOSPITALADDR  }</td>
			<td scope="row">${list.HOSPITALTEL  }</td>
			<td scope="row">${list.HOSPITALSICKBAD  }</td>	
			<td scope="row">${list.HOSPITALLRM }</td>
        	<td scope="row">${list.HOSPITALMEDSTAF }</td>	
		</tr>
		</c:forEach>
	</table>
	<div><br />
		<input type="button" name="main" value="보호자메인" onclick="location.href='familyMain.do'">
	</div>
	
</div>
</body>