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
<!-- 캘린더  -->
<script src="${pageContext.request.contextPath}/resources/schedule/lib/main.js"></script>
<link href="${pageContext.request.contextPath}/resources/schedule/lib/main.css" rel='stylesheet' />
<style>
html,body,h1,h2,h3,h4,h5,h6 {
  font-family: 'Noto Sans KR', sans-serif;
}

ul.breadcrumb { 
  margin:10px;
  padding: 10px 16px;
  list-style: none;
  background-color: white;
}
ul.breadcrumb li {
  display: inline;
  font-size: 18px;
}
ul.breadcrumb li+li:before {
  padding: 8px;
  color: black;
  content: "/\00a0";
}
ul.breadcrumb li a {
  color: #0275d8 !important;
  text-decoration: none;
  font-weight:bold;
}

#calendar {
	width: 100%;
}
</style>
<script>

 /* 캘린더  */
	document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
      var calendar = new FullCalendar.Calendar(calendarEl, {
	          initialView: 'dayGridMonth',
	          url:'calendarList.do'
	     });
	        calendar.render();
});
      
      
      
function getServiceNo(key) {
	document.scheduleListForm.serviceNo.value=key;
	console.log(key);
	document.scheduleListForm.submit();
}
</script>
</head>
<body>
 <div id='calendar'></div>

<header>
	<ul class="breadcrumb">	
	  <li><a>스케줄 리스트</a></li>
	</ul>
</header>

 
<form id="scheduleListForm" name="scheduleListForm" action="scheduleDetail.do" method="post">
<div class="container">
  <c:forEach var="sceduleList" items="${sceduleList }">
	   ${sceduleList.serviceDate } 일정
	<div class="card bg-secondary text-white ">
       <div class="card-body">
			<h4>${sceduleList.patientName }님 </h4>
			<h5>서비스 시간: ${sceduleList.serviceStartTime } - ${sceduleList.serviceEndTime }</h5><br>
				<button type="button" onclick="getServiceNo('${sceduleList.serviceNo}')"class="w3-button w3-sand w3-round">상세정보</button>&nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="chat.do"> 
			   		 <img src="${pageContext.request.contextPath}/resources/img/chat/chat2.png" style="height: 42px" />
			    </a>				
       </div>
    </div>
    <input type="hidden" id="serviceNo" name="serviceNo">
  </c:forEach>
<br>
</div>
</form>



</body>
</html>