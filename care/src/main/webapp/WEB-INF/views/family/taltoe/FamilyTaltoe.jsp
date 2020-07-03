<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/core.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/sha256.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/user-info.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/sign.js"></script>
<!-- 글꼴 -->
<link href="https://fonts.googleapis.com/css2?family=Chewy&family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
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
<script>
	var loginPw = "${sessionPw}";
	console.log(loginPw);
	function validate(){
		if(familyDelete.familyPw.value != familyDelete.familyPw2.value) {
   	 	alert("비밀번호가 일치하지 않습니다.");
    	
	}else if (loginPw != familyDelete.familyPw.value){
		alert("비밀번호가 일치하지 않습니다.");
	}else{
		alert("회원탈퇴 되었습니다.")
		document.familyDelete.submit();
	}
}
</script> 
<body>
<div class="w3-container w3-center">
	<div class="w3-padding-large">
		<div class="w3-row">
		  <div align="center" style="margin-top:17px;">
			<a class="title">환자정보 수정</a>
  		  </div><br>
			<div class="w3-col m4">
				<form action="familyTaltoe.do" id="familyDelete" name="familyDelete">					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비밀번호</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border pw-check" type="password" placeholder="" id="familyPw" name="familyPw" value="" required>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비밀번호확인</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border pw-check" type="password" placeholder="" id="family2" name="familyPw2" value=""required>
<!-- 비밀번호 일치여부 표시		<span id="pw-success" style="display: none; font-weight:bold;">비밀번호 일치</span>
							<span id="pw-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호 불일치</span> -->	
						</div>
					</div>
					<br>
					<div align="center">
					<button class="w3-button w3-round w3-dark-grey"  type="button" id="btn" name="btn" onclick="validate()">회원탈퇴</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey" type="button" onclick="location.href='familyMain.do'">취소</button>
					</div>
				</form>
				
			</div>
		</div>


	</div>
</div>
</body>  
</html>