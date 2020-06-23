<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html> 
<head> 
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-flat.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-green.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head> 
<title>메인화면</title> 

<style type = "text/css">
.patient, .family, .helper {
	-moz-box-shadow: 0px 10px 14px -7px #3e7327;
	-webkit-box-shadow: 0px 10px 14px -7px #3e7327;
	box-shadow: 0px 10px 14px -7px #3e7327;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #77b55a), color-stop(1, #72b352) );
	background:-moz-linear-gradient( center top, #77b55a 5%, #72b352 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77b55a', endColorstr='#72b352');
	background-color:#77b55a;
	-webkit-border-top-left-radius:4px;
	-moz-border-radius-topleft:4px;
	border-top-left-radius:4px;
	-webkit-border-top-right-radius:4px;
	-moz-border-radius-topright:4px;
	border-top-right-radius:4px;
	-webkit-border-bottom-right-radius:4px;
	-moz-border-radius-bottomright:4px;
	border-bottom-right-radius:4px;
	-webkit-border-bottom-left-radius:4px;
	-moz-border-radius-bottomleft:4px;
	border-bottom-left-radius:4px;
    text-indent:0;
	border:2px solid #4b8f29;
	display:inline-block;
	color:#ffffff;
	font-family:Arial;
	font-size:21px;
	font-weight:bold;
	font-style:normal;
	height:69px;
	line-height:69px;
	width:300px;
	text-decoration:none;
	text-align:center;
	text-shadow:0px 1px 0px #5b8a3c;
}.patient:hover, .family:hover, .helper:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #72b352), color-stop(1, #77b55a) );
	background:-moz-linear-gradient( center top, #72b352 5%, #77b55a 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#72b352', endColorstr='#77b55a');
	background-color:#c3ebae;
}.patient:active, .family:active, .helper:active {
	position:relative;
	top:1px;
	
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
.w3-button {width:200px;}
</style>

</head>

<body>
<div class="w3-right" style="padding:4px; margin:4px">
<button class="w3-button w3-flat-emerald w3-padding-large w3-hover-white w3-large w3-round-large" 
	 class="adminlogin" onclick="location.href='adminlogin.do'" > 관리자 </button>
</div>
<!-- Header -->
<header class="w3-center" style="padding:80px 16px">
  <h1 class="w3-margin w3-jumbo">Care WithU</h1>
  <p class="w3-xlarge">사용자 유형을 선택해주세요.</p><br>


<div align="center" style="margin:20px;">
<a href="patient.do" class="patient">환자</a><br><br>
<a href="familyLogin.do" class="family">보호자</a><br><br>
<a href="helper.do" class="helper">간병인</a><br><br>
</div> 

<!-- 임시 a링크들 boy 찬진 -->
<div><br/></div>
<div id=temp align="center">
	<h3>기능 테스트를 위한 임시 링크(찬진)</h3>
	<a href=chat.do>채팅</a><br/>
	<a href=pay.do>결제</a><br/>
	<a href=helperList.do>보호자의 간병인 조회/신청</a><br/>
</div>

</header>

</body> 

</html>

