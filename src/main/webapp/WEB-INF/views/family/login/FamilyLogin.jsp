<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
<head>
<meta charset="utf-8" />
<title>보호자 로그인</title>
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
<style>
.main {
	margin:80px;
	
}

.errorMsg, .errorMsg2 {
	color:#ec2020; 
	font-weight:bold;
	font-size: 18px;
	font-family: Montserrat-Regular;
}


</style>

<script>
function loginValidation(){
	
	var familyEmail = $("#familyEmail").val();
	var password = $("#familyPw").val();
	
	if(!familyEmail){
		alert("이메일을 입력하세요.");
		$("#familyEmail").focus();
		return false;
	}else if(!password){
		alert("비밀번호를 입력하세요.");
		$("#familyPw").focus();
		return false;
	} 	
	fLoginForm.submit();
}



function enterKeyCheck(){
	
 if(event.keyCode == 13)
	  {
	 loginValidation();
	  }	
}
</script>
</head>
<body>

	<div class="limiter">

			<div class="main" align="center">
				<form name="fLoginForm" action="loginCheck.do" method="post" class="login100-form validate-form">
					<span class="w3-xxlarge"> 보호자 로그인</span>
					<br><br>					
					<div class="wrap-input100 validate-input"
						 data-validate="이메일을 입력해주세요.: ab@naver.com">
						<input class="input100" type="text" id="familyEmail" name="familyEmail" onkeyup="enterKeyCheck()" autofocus> 
						<span class="focus-input100"></span> 
						<span class="label-input100">이메일</span>
					</div>
					<div class="wrap-input100 validate-input"
						 data-validate="패스워드를 입력해주세요.">
						<input class="input100" type="password" id="familyPw" name="familyPw" onkeyup="enterKeyCheck()"> 
						<span class="focus-input100"></span> 
						<span class="label-input100">패스워드</span>
					</div>
				    <c:if test="${noEmail == false }">
						<p class="errorMsg"> 해당하는 이메일이 존재하지 않습니다.</p>
					</c:if>
				    <c:if test="${noMember == false }">
						<p class="errorMsg2"> 이메일 또는 패스워드가 틀렸습니다.</p>
					</c:if>
				  <br><br>					
					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" type="checkbox" id="customCheck" name="customCheck" > 
								<label class="label-checkbox100" for="customCheck"> 자동 로그인 </label>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<button type="button" class="login100-form-btn" onclick="loginValidation()">로그인</button>&nbsp;&nbsp;&nbsp;
						<button type="button" class="login100-form-btn" onclick="location.href='signUpFormFamily.do'">회원가입</button><br>
					</div>

				</form>
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
</body>
</html>
