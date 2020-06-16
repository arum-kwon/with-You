<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<meta charset="UTF-8">
<title>보호자 로그인화면</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
<style>

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
		$("#password").focus();
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
<style>
.text-center {
	margin:100px;

}
</style>
</head>
<body>
<div class="text-center">
  <h1 class="h4 text-gray-900 mb-4">보호자 로그인</h1>
</div>

<form name="fLoginForm" action="loginCheck.do" method="post" class="user">
  <div class="form-group">
    <input type="text" class="form-control form-control-user" id="familyEmail" name="familyEmail"  autofocus onkeyup="enterKeyCheck()" placeholder="이메일을 입력해 주세요.">
  </div>
  <div class="form-group">
    <input type="password" class="form-control form-control-user" id="familyPw" name="familyPw" onkeyup="enterKeyCheck()" placeholder="비밀번호를 입력해 주세요.">
  </div>
  <div align="center" class="form-group">
    <div class="custom-control custom-checkbox small">
      <input type="checkbox" class="custom-control-input" id="customCheck">
      <label class="custom-control-label" for="customCheck">자동 로그인</label>
    </div><br><br>
   <input type="button" value="로그인" onclick="loginValidation()" class="btn btn-primary btn-lg">
   <input type="button" value="회원가입" onclick="location.href='signUpFormFamily.do'" class="btn btn-primary btn-lg">  
  </div><br><br>
 
</form>






 <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/resources/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/resources/js/demo/chart-area-demo.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/demo/chart-pie-demo.js"></script>

</body>
</html>