<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>간병인 메인홈메뉴</title>
<style>
.menu {
	margin:50px;
}
.fam1,.fam2 {
	margin:45px;
	display:inline-block;

}
.fam3, .fam4 {
	margin:45px;
	display:inline-block;
}
</style>
</head>
<body>
	<div class="menu" align="center">
		<div class="fam1">
		   	<a href="#contact">
		  	<img src="${pageContext.request.contextPath}/resources/img/menu/schedule.png" style="height:90px"  />
		  	</a>
		  		<h3>스케줄관리</h3>
		</div>
		  <div class="fam2">
		  	<a href="helperGetSelect.do">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/settingUser.png" style="height:100px"  />
		  	</a>
		  		<h3>회원정보 수정</h3>
		  </div>
		<br>
		<div class="fam3">
		  	<a href="#contact">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/callService.png" style="height:90px"  />
		  	</a>
		  		<h3>요청리스트</h3>
		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="fam4">
		  	<a href="serviceHistory.do">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/serviceList.png" style="height:100px"  />
		  	</a>
		  		<h3>서비스 이력</h3>
		</div>
  	
	</div>

</body>
</html>