<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>보호자 메인홈메뉴</title>
<style>
.menu {
	margin:50px;
}
.fam1,.fam2 {
	margin:45px;
	display:inline-block;

}
.fam3 {
	margin:35px;
}
</style>
</head>
<body>
	<div class="menu" align="center">
		<div class="fam1">
		   	<a href="applyMenu.do">
		  	<img src="${pageContext.request.contextPath}/resources/img/menu/addHelper.png" style="height:90px"  />
		  	</a>
		  	<h3>간병인 신청</h3>
		</div>
		  <div class="fam2">
		  	<a href="careFamily.do">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/familyCare.png" style="height:100px"  />
		  	</a>
		  		<h3>가족 케어</h3>
		  </div>
		<br>
		<div class="fam3">
		  	<a href="#contact">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/hospital.png" style="height:90px"  />
		  	</a>
		  	<h3>시설 조회</h3>
		</div>
		
  	
	</div>

</body>
</html>