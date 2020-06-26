<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>간병인 서비스 이력 상세 페이지</title>
<style>
html,body,h1,h2,h3,h4,h5,h6 {
  font-family: 'Noto Sans KR', sans-serif;
}

.w3-container{
	margin:38px;
	text-align:center;
}
.w3-button{

}
</style>
</head>

<body>
<div class="w3-container">
	<h4>
		${historyDetail.patientName } /${historyDetail.patientBirth }/${historyDetail.patientSex }<br>
	</h4>	
	복용중인약:${historyDetail.patientMedication }<br>
	혈액형:${historyDetail.patientMedication }<br>
	질환:${historyDetail.patientDisease }<br> 
	치매등급:${historyDetail.patientGrade }<br> 
	주소:${historyDetail.patientAddr }<br> 
	서비스날짜:${historyDetail.serviceDate }<br> 
	서비스시작시간:${historyDetail.serviceStartTime }시<br> 
	서비스종료시간:${historyDetail.serviceEndTime }시<br> 
	출근시간:${historyDetail.realStartTime }<br> 
	퇴근시간:${historyDetail.realEndTime }<br> 
	수령금액:${historyDetail.helperPrice }원<br> 
	요구사항:${historyDetail.serviceDemand }<br>
	평점:
	<div class="form-group">
      <label for="exampleTextarea">후기:</label>
      <textarea class="form-control" id="exampleTextarea" rows="3" style="height: 52px;">
      	후기를 입력해주세요.
      </textarea>
    </div>	
    <div align="center">
     <button type="button" class="w3-button w3-light-grey w3-round">취소</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <button type="button" class="w3-button w3-indigo w3-round">저장</button>
    </div>
</div>	
	
	 
</body>
</html>