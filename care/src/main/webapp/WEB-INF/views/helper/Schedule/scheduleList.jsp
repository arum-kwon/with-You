<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스케줄 리스트 가져오는 화면</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<style>
html,body,h1,h2,h3,h4,h5,h6 {
  font-family: 'Noto Sans KR', sans-serif;
}
</style>

</head>
<body>
<div class="container">
  <c:forEach var="sceduleList" items="${sceduleList }">
	   ${sceduleList.serviceDate } 일정
	<div class="card bg-secondary text-white ">
       <div class="card-body">
			<h3>${sceduleList.patientName }님 </h3>
			<h5>서비스 시간: ${sceduleList.serviceStartTime } ~ ${sceduleList.serviceEndTime }</h5><br>
				<button class="w3-button w3-sand w3-round">상세정보</button>&nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="chat.do"> 
			   		 <img src="${pageContext.request.contextPath}/resources/img/chat/chat2.png" style="height: 42px" />
			    </a>
				
       </div>
    </div>
  </c:forEach>
<br>
</div>



</body>
</html>