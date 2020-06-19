<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<title>환자 로그인 메뉴</title>
<style>
.main {
	margin:80px;
}
.btnLogin {
	margin:30px
}
</style>
<script>
function loginValidation(){
	
	var patientVcode = $("#patientVcode").val();
	
	if(!patientVcode){
		alert("인증코드를 입력하세요.");
		$("#patientVcode").focus();
		return false;
	}
	
	pLoginForm.submit();
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
<div class="main" align="center">
	<div class="col-lg-10 align-self-end">
	  <div class="col-lg-10 align-self-end">
       <h2 class="text-uppercase text-black font-weight-bold">환자 로그인</h2>
      </div>
	</div>
</div>

<form name="pLoginForm" action="patientLoginCheck.do" method="post" class="user">
  <div class="form-group">
 <input type="text" class="form-control" id="patientVcode" name="patientVcode" autofocus onkeyup="enterKeyCheck()" placeholder="인증코드를 입력해 주세요.">
  </div>
  <br>
      <c:if test="${noCode == false }">
		<p style="color:#ec2020; font-weight:bold;"> 해당하는 인증코드가 존재하지 않습니다.</p>
	</c:if>
    <c:if test="${noMember == false }">
		<p style="color:#ec2020; font-weight:bold;"> 인증코드가 틀렸습니다.</p>
	</c:if>
  <br><br>
  
  <div align="center" class="form-group">
    <div class="custom-control custom-checkbox small">
      <input type="checkbox" class="custom-control-input" id="customCheck" name="customCheck">
      <label class="custom-control-label" for="customCheck">자동 로그인</label>
    </div>
    <br>
   <div class="btnLogin">
   	<input type="button" value="로그인" onclick="loginValidation()" class="btn btn-primary btn-lg">
   </div>
  </div>

  <br>
</form>


</body>
</html>