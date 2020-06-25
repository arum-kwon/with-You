<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간병인 서비스이력 화면</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<style>
html,body,h1,h2,h3,h4,h5,h6 {
  font-family: 'Noto Sans KR', sans-serif;
}

ul.breadcrumb { 
  margin:30px;
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
  color: #0275d8;
  text-decoration: none;
  font-weight:bold;
}

</style>
<script>
function getServiceNo(key) {
	document.historyForm.serviceNo.value=key;
	console.log(key);
	document.historyForm.submit();
}
</script>

</head>
<body>
<header>
	<ul class="breadcrumb">
	  <li><a>서비스 이력</a></li>
	</ul>
</header>

<form id="historyForm" name="historyForm" action="historyDetail.do" method="post">
<c:forEach var ="list" items="${serviceHistoryList }">
	    <div class="w3-tag w3-round w3-green" style="margin-left:30px;padding:3px">
  			 <div class="w3-tag w3-round w3-green w3-border w3-border-white">
 				   서비스날짜: ${list.serviceDate }
		     </div>
        </div>
   <div class="w3-row">
	    <div class="w3-col w3-container m9 s9" style="text-align:center;">
				${list.patientName } 님<br>
				${list.patientBirth }세 / ${list.patientSex } <br>
				${list.patientAddr }
	    </div>
	    <div class="w3-col w3-container m3 s3" align="left">
	    	<button type="button" onclick="getServiceNo('${list.serviceNo}')" class="w3-button w3-blue w3-round-large">상세보기</button>
	    </div>
	 </div> 
	 <input type="hidden" id="serviceNo" name="serviceNo">
	<hr style="border:1px color= silver;" width="100%">
</c:forEach>
</form>




</body>
</html>