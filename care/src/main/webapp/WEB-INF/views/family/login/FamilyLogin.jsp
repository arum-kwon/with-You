<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<title>보호자 로그인화면</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
<style>
.main {
	margin:80px;
	
}
</style>
</head>

<body>
<div class="main" align="center">
	<div class="col-lg-10 align-self-end">
	  <div class="col-lg-10 align-self-end">
       <h2 class="text-uppercase text-black font-weight-bold">보호자 로그인</h2>
      </div>
	</div>
</div>



<form name="fLoginForm" action="loginCheck.do" method="post" class="user">
  <div class="form-group">
 <input type="text" class="form-control" id="familyEmail" name="familyEmail" autofocus onkeyup="enterKeyCheck()" placeholder="이메일을 입력해 주세요.">
  </div>
  <div class="form-group">
    <input type="password" class="form-control" id="familyPw" name="familyPw" onkeyup="enterKeyCheck()" placeholder="비밀번호를 입력해 주세요.">
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
   <input type="button" value="회원가입" onclick="location.href='signUpFormFamily.do'" class="btn btn-primary btn-lg">  
  </div>
  <br>
</form>
     
        

</body>
</html>