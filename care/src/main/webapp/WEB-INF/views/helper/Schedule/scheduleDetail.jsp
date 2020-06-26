<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<title>서비스이력 상세조회</title>
<style>
body,h1,h2,h3,h4,h5,h6 {
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 20px;
}
.title{
  margin:35px;
  font-size: 30px;
  color: black;
  text-decoration: none;
  font-weight:bold;
}
a {
  font-size: 26px;
  font-weight:bold;
}
.text {
  text-align:center;
}
</style>
</head>
<body>
<header>
	<div class="title" align="center">	
      <img src="${pageContext.request.contextPath}/resources/img/menu/schedule.png" style="height:50px"/>&nbsp;&nbsp;
	  <a>스케줄 상세정보</a>
	  </div>
	
</header>
<div align="center">
	 <div>
		<img src="${pageContext.request.contextPath}/resources/img/family.png" style="height:50px"/><a>보호자 정보</a><br>
	 </div>
	 <div class="text">
		이름:${scheduleDetail.familyName } <br>
		연락처:${scheduleDetail.familyTel } <br>
		이메일:${scheduleDetail.familyEmail } <br>
		요청한 서비스시간:${scheduleDetail.serviceStartTime } - ${scheduleDetail.serviceEndTime } <br>
		요구사항:${scheduleDetail.serviceDemand } 
	 </div>
		<br>
	<div class="text2">
		<img src="${pageContext.request.contextPath}/resources/img/user.png" style="height:50px"/><a>환자 정보</a><br>
		이름:${scheduleDetail.patientName } <br>
		나이/성별/혈액형:${scheduleDetail.patientBirth }/${scheduleDetail.patientSex }/${scheduleDetail.patientBlood } <br>
		주소:${scheduleDetail.patientAddr } <br>
		연락처:${scheduleDetail.patientTel } <br>
		보호자비상연락처:${scheduleDetail.patientFamilyTel } <br>
		질환:${scheduleDetail.patientDisease } <br>
		치매등급:${scheduleDetail.patientGrade } <br>
		복용중인 약:${scheduleDetail.patientMedication } <br>
		특이사항:${scheduleDetail.patientUnique } <br>
	</div>



</div>








</body>
</html>