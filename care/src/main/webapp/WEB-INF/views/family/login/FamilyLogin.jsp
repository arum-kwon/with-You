<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Login V10</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.login100-form-title {
	font-weight:bold;
}
.label-checkbox100 {
	font-family:Arial;
	color:black;
}
.login100-form-btn {
	margin-right: 30px;
	margin-left: 30px;
	width:100px;
	font-weight:bold;
	font-size:20px;
}
.wrap-login100 {
 background-color: rgba( 255, 255, 255, 0.8 );
 
}
</style>
</head>
<body>
<div class="limiter">
<div class="container-login100">
<div class="wrap-login100 p-t-50 p-b-90">

<form class="login100-form validate-form flex-sb flex-w">

<span class="login100-form-title p-b-51">보호자 로그인</span>

<div class="wrap-input100 validate-input m-b-16" data-validate="Username is required">
	<input class="input100" type="text" name="username" placeholder="이메일">
	<span class="focus-input100"></span>
</div>
<div class="wrap-input100 validate-input m-b-16" data-validate="Password is required">
	<input class="input100" type="password" name="pass" placeholder="비밀번호">
	<span class="focus-input100"></span>
</div>
<div class="flex-sb-m w-full p-t-3 p-b-24">
	<div class="contact100-form-checkbox">
		<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
		<label class="label-checkbox100" for="ckb1">자동 로그인</label>
	</div>
</div>

<div align="center" class="container-login100-form-btn m-t-5">
	<button class="login100-form-btn">
	로그인
	</button>
	<button class="login100-form-btn">
	회원가입
	</button>
</div>

</form>

</div>
</div>
</div>
<div id="dropDownSelect1"></div>

<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/vendor/animsition/js/animsition.min.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/popper.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/moment.min.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/vendor/countdowntime/countdowntime.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/js/main.js" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="a17e7522a6985ee6ef7915ef-text/javascript"></script>
<script type="a17e7522a6985ee6ef7915ef-text/javascript">
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
<script src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js" data-cf-settings="a17e7522a6985ee6ef7915ef-|49" defer=""></script></body>
</html>