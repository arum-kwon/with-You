<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/core.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/sha256.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/user-info.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/sign.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
 <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<!-- 글꼴 -->
<link href="https://fonts.googleapis.com/css2?family=Chewy&family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script>
	var loginPw = "${sessionPw}";
	console.log(loginPw);
	function validate(){
		if(helperUpdate.helperPw.value != helperUpdate.helperPw2.value) {
   	 	alert("비밀번호가 일치하지 않습니다.");
    	
	}else if (loginPw != helperUpdate.helperPw.value){
		alert("비밀번호가 일치하지 않습니다.");
	}else{
		alert("회원탈퇴 되었습니다.")
		document.helperUpdate.submit();
	}
}
</script>
<style>
.title{
	font-family: 'Do Hyeon', sans-serif;
	font-size: 38px;
	
}
.w3-button{
  font-family: 'Jua', sans-serif;
  font-size: 18px;
  width:90px;
}
.w3-col{
  font-size: 17px;
  font-family: 'Do Hyeon', sans-serif;	
}
	
</style>   
<!DOCTYPE html>
<div class="w3-container w3-center">
<div class="w3-padding-large">
	<div class="w3-row">
	<div class="w3-col m4">&nbsp;</div>
	<div class="w3-col m4">
	<form action="taltowi.do" id="helperUpdate" name="helperUpdate">
		<h1 class="title">간병인 탈퇴</h1>	<br>	
			<div class="w3-row">
				<div class="w3-col s4 m4" style="font-size:20px;" ><p>비밀번호</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border form-control" type="password" placeholder="" id="helperPw" name="helperPw" value="" required>
			</div>
		</div>
					<div class="w3-row">
						<div class="w3-col s4 m4" style="font-size : 20px;"><p style="margin-bottom : 1px;">비밀번호</p>확인</div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border form-control" type="password" placeholder="" id="helperPw2" name="helperPw2" value=""required>
<!-- 비밀번호 일치여부 표시		<span id="pw-success" style="display: none; font-weight:bold;">비밀번호 일치</span>
							<span id="pw-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호 불일치</span> -->	
						</div>
					</div>
					<br>				
					<button class="w3-button w3-round w3-dark-grey confirm"  type="button" id="btn" name="btn" onclick="validate()">회원탈퇴</button>
				
					<button class="w3-button w3-round w3-dark-grey confirm" type="reset" onclick="location.href='helperMain.do'">취소</button>
				</form>
				
			</div>
		</div>


	</div>
</div>