<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/core.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/sha256.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/user-info.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/select-area.js"></script>
<!-- 글꼴  -->
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Chewy&family=Jua&display=swap" rel="stylesheet">
<script>

</script>   
<style>
.title{
  margin-top:10px;
  font-family: 'Do Hyeon', sans-serif;
  font-size: 38px;
  color: black;
}
input{
	margin-bottom : 5px;
	border-radius : 4px;
	width : 1200px;
}
.searchAdd{
	margin-bottom : 5px;

	width :200px;
}
.confirm{
	margin-left : 60px;
}
.w3-col{
  font-size: 17px;
  font-family: 'Do Hyeon', sans-serif;	
}
.w3-button{
  font-family: 'Jua', sans-serif;
  font-size: 18px;
  width:70px;
}
</style>
<script>
function validPw(){
	   if(helperUpdate.helperPw.value == ""){
	 	alert("비밀번호를 입력하세요.")
	  }else if(helperUpdate.helperPw2.value=="" ) {
		  alert("비밀번호를 확인하세요")
	  }else if (helperUpdate.helperPw.value != helperUpdate.helperPw2.value){
		  alert("비밀번호가 일치하지 않습니다.");
	  }else{
		  pwSHA256();
		  document.helperUpdate.submit();
		  
	  }
}
</script>
<!DOCTYPE html>
	<div class="w3-padding-large">
			<div class="m4 container">
			 	<div class="title" align="center">
					<a class="title">회원정보 수정</a>
			 	</div>
				<form action="helperUpdate.do" id="helperUpdate" name="helperUpdate">			 	
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이메일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border form-control" type="text" placeholder="" id="helperEmail" name="helperEmail" value="${getSelect.helperEmail }" style="width : 200px" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비밀번호</p></div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border pw-check form-control" type="password" placeholder="" id="helperPw" name="helperPw" style="width : 200px" value="">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비밀번호확인</p></div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border" type="password" placeholder="" id="helperPw2" name="helperPw2" value="" style="width : 200px">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이름</p></div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border" type="text" placeholder="" id="helperName" name="helperName" value="${getSelect.helperName }" style="width : 200px" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>성별</p>	</div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border" type="text" placeholder="" id="helperSex" name="helperSex" value="${getSelect.helperSex }" style="width : 200px" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>생년월일</p></div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border" type="text" placeholder="" id="helperBirth" name="helperBirth" value="<fmt:formatDate value="${getSelect.helperBirth}" pattern="yyyy-MM-dd" />" style="width : 200px" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>주소</p>	</div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border add-juso" type="text" placeholder="" id="helperAddr" name="helperAddr" value="${getSelect.helperAddr }" style="width : 200px"><button class="searchAdd" type="button" onclick="jusoPopup(0)">주소찾기</button>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>연락처</p></div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border" type="text" placeholder="" id="helperTel" name="helperTel" value="${getSelect.helperTel }" style="width : 200px">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>희망근무지역</p></div>
						<div class="w3-col s8 m8">
							<select name="helperWorkArea1" id="helperWorkArea1" onchange="categoryChange(this)">
								<option value="서울" ${helperWorkArea1 eq "서울" ? "selected" :""}>서울</option>
								<option value="부산" ${helperWorkArea1 eq "부산" ? "selected" :""}>부산</option>
								<option value="대구" ${helperWorkArea1 eq "대구" ? "selected" :""}>대구</option>
								<option value="인천" ${helperWorkArea1 eq "인천" ? "selected" :""}>인천</option>
								<option value="광주" ${helperWorkArea1 eq "광주" ? "selected" :""}>광주</option>
								<option value="대전" ${helperWorkArea1 eq "대전" ? "selected" :""}>대전</option>
								<option value="울산" ${helperWorkArea1 eq "울산" ? "selected" :""}>울산</option>
								<option value="세종" ${helperWorkArea1 eq "세종" ? "selected" :""}>세종</option>
								<option value="경기" ${helperWorkArea1 eq "경기" ? "selected" :""}>경기</option>
								<option value="강원" ${helperWorkArea1 eq "강원" ? "selected" :""}>강원</option>
								<option value="충북" ${helperWorkArea1 eq "충북" ? "selected" :""}>충북</option>
								<option value="충남" ${helperWorkArea1 eq "충남" ? "selected" :""}>충남</option>
								<option value="전북" ${helperWorkArea1 eq "전북" ? "selected" :""}>전북</option>
								<option value="전남" ${helperWorkArea1 eq "전남" ? "selected" :""}>전남</option>
								<option value="경북" ${helperWorkArea1 eq "경북" ? "selected" :""}>경북</option>
								<option value="경남" ${helperWorkArea1 eq "경남" ? "selected" :""}>경남</option>
								<option value="제주" ${helperWorkArea1 eq "제주" ? "selected" :""}>제주</option>
							</select> 
							<select name="helperWorkArea2" id="helperWorkArea2">
								<option value="${helperWorkArea2}" selected="selected">${helperWorkArea2}</option>
							</select>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>근무시작시간</p></div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border" type="text" placeholder="" id="helperStartTime" name="helperStartTime" value="${getSelect.helperStartTime }" style="width : 200px">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>근무종료시간</p></div>
						<div class="w3-col s8 m8">
							<input class="form-control w3-input w3-border" type="text" placeholder="" id="helperEndTime" name="helperEndTime" value="${getSelect.helperEndTime }" style="width : 200px">
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>특이사항</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border form-control" type="text" placeholder="" id="helperUnique" name="helperUnique" value="${getSelect.helperUnique }" style="width : 200px">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>수수료 등급</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border form-control" type="text" placeholder="" id="commissionGrade" name="commissionGrade" value="${getSelect.commissionGrade }" style="width : 200px">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>프로필 사진</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="file" placeholder="" id="helperProfile" name="helperProfile">
						</div>
					</div>
					<button class="w3-button w3-round w3-dark-grey confirm"  type="button" onclick="validPw()">수정</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey cancle" type="reset" onclick="location.href='helperMain.do'">취소</button>
				</form>

