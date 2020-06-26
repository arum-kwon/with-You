<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>가족 케어메뉴</title>
<style>
.menu {
	margin:50px;
}
.fam1,.fam2 {
	margin:45px;
	display:inline-block;

}
.fam3,.fam4 {
	margin:25px;
	display:inline-block;
}
</style>
</head>
<body>
	<div class="menu" align="center">
		<div class="fam1">
		   	<a href="patientLoc.do">
		  	<img src="${pageContext.request.contextPath}/resources/img/menu/findPatient.png" style="height:90px"  />
		  	</a>
		  	<h3>가족 실시간 위치</h3>
		</div>
		  <div class="fam2">
		  	<a href="recordVoiceMsg.do">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/recordVoice.png" style="height:100px"  />
		  	</a>
		  		<h3>음성 메세지</h3>
		  </div>
		<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="fam3">
		  	<a href="todayLine.do">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/analysePatient.png" style="height:90px"  />
		  	</a>
		  	<h3>가족 활동체크</h3>
		</div>&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="fam4">
		  	<a href="patientgetSelect.do">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/alterPatient.png" style="height:90px"  />
		  	</a>
		  	<h3>가족 정보 수정</h3>
		</div>
  	
	</div>

</body>
</html>