<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/util.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/login/css/main.css">
<!-- 글꼴  -->
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Chewy&family=Jua&display=swap" rel="stylesheet">
<style>
.errorMsg, .errorMsg2 {
	color:#ec2020; 	
	font-size: 18px;
	font-family: 'Do Hyeon', sans-serif;
}
.label-checkbox100, .input100 {
    font-family: 'Do Hyeon', sans-serif;
}
.title{
	font-family: 'Do Hyeon', sans-serif;
	font-size: 38px;
	
}
.login100-form{
	padding-top: 0px;
}
.login100-form-btn {
	font-family: 'Jua', sans-serif;
}
</style>



<div class="limiter">
	<div align="center" style="margin:30px;">
		<a class="title"> 회원 가입 완료</a>
	</div>
		<div class="main" align="center">		
		    <br><br>		
			<div class="container-login100-form-btn">
				<button type="button" class="login100-form-btn"  onclick="goLogin();">로그인하기</button>
			</div>
		</div>

</div>


<script src="${pageContext.request.contextPath}/resources/login/vendor/jquery/jquery-3.2.1.min.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/login/vendor/animsition/js/animsition.min.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/js/popper.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/js/bootstrap.min.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/login/vendor/select2/select2.min.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/moment.min.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/login/vendor/countdowntime/countdowntime.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>

<script src="${pageContext.request.contextPath}/resources/login/js/main.js"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>

<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"
	type="52d3938905cc4558c3d5b090-text/javascript"></script>
<script type="52d3938905cc4558c3d5b090-text/javascript">
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
</script>
<script
	src="https://ajax.cloudflare.com/cdn-cgi/scripts/7089c43e/cloudflare-static/rocket-loader.min.js"
	data-cf-settings="52d3938905cc4558c3d5b090-|49" defer=""></script>

<script>
	function goLogin(){
		location.href="helperLogin.do";
	}
</script>