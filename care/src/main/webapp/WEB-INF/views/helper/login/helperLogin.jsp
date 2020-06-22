<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>간병인 로그인화면</title>

<style>
.main {
	margin:80px;
	
}
</style>

<script>
function loginValidation(){
	
	var familyEmail = $("#helperEmail").val();
	var password = $("#helperPw").val();
	
	if(!familyEmail){
		alert("이메일을 입력하세요.");
		$("#helperEmail").focus();
		return false;
	}else if(!password){
		alert("비밀번호를 입력하세요.");
		$("#helperPw").focus();
		return false;
	} 	
	hLoginForm.submit();
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
       <h2 class="text-uppercase text-black font-weight-bold">간병인 로그인</h2>
      </div>
	</div>
</div>

<form name="hLoginForm" action="helperLoginCheck.do" method="post" class="user">
  <div class="form-group">
 <input type="text" class="form-control" id="helperEmail" name="helperEmail" autofocus onkeyup="enterKeyCheck()" placeholder="이메일을 입력해 주세요.">
  </div>
  <div class="form-group">
    <input type="password" class="form-control" id="helperPw" name="helperPw" onkeyup="enterKeyCheck()" placeholder="비밀번호를 입력해 주세요.">
  </div>

    <c:if test="${noEmail == false }">
		<p style="color:#ec2020; font-weight:bold;"> 해당하는 이메일이 존재하지 않습니다.</p>
	</c:if>
    <c:if test="${noMember == false }">
		<p style="color:#ec2020; font-weight:bold;"> 이메일 또는 패스워드가 틀렸습니다.</p>
	</c:if>
  <br><br>
  <div align="center" class="form-group">
    <div class="custom-control custom-checkbox small">
      <input type="checkbox" class="custom-control-input" id="customCheck" name="customCheck">
      <label class="custom-control-label" for="customCheck">자동 로그인</label>
    </div>
    
    <br>
   <input type="button" value="로그인" onclick="loginValidation()" class="btn btn-primary btn-lg">
   <input type="button" value="회원가입" onclick="location.href='signUpFormHelper.do'" class="btn btn-primary btn-lg">  
  </div>
  <br>
</form>

</body>

</html>