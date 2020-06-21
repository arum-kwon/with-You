<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script type="text/javascript">
	window.onload=function(){
		var button = document.getElementById("updateButton");
		   button.addEventListener("click",updateForm);
		   function updateForm(){
			   var familyAddr = document.getElementById("familyAddr").value
			   var familyTel = document.getElementById("familyTel").value
			   var patientAddr = document.getElementById("patientAddr").value
			   var patientFamilyTel = document.getElementById("patientFamilyTel").value
			   var patientTel = document.getElementById("patientTel").value		  			   			   
			   
			   if(familyAddr.length ==0){
				   alert("보호자 주소를 입력하세요");
			   }
			   if(familyTel.length ==0){
				   alert("보호자 연락처를 입력하세요");
			   }
			   if(patientAddr.length ==0){
				   alert("환자 주소를 입력하세요");
			   }
			   if(patientFamilyTel.length ==0){
				   alert("환자 주소를 입력하세요");
			   }
			   if(patientTel.length ==0){
				   alert("환자 번호를 입력하세요");
			   }
			   document.getElementById("updateForm").submit;
	}
   
   }
   
</script>
<div class="w3-container w3-center">
	<div class="w3-padding-large">

		<div class="w3-row">
			<div class="w3-col m4">&nbsp;</div>
			<div class="w3-col m4">
				<form id="updateForm" action="familyUpdate.do">
					<h1>보호자 정보수정</h1>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이메일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyEmail" name="familyEmail" value="${getSelect.familyEmail }"> 
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이름</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyName" name="familyName" value="${getSelect.familyName }">
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>생년월일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyBirth" name="familyBirth" value="${getSelect.familyBirth }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>주소</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyAddr" name="familyAddr" value="${getSelect.familyAddr }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>연락처</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyTel" name="familyTel" value="${getSelect.familyTel }">
						</div>
					</div>

					<h1>환자정보</h1>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이름</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientName" name="patientName" value="${getSelect.patientName }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>성별</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientSex" name="patientSex" value="${getSelect.patientSex }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>주소</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientAddr" name="patientAddr" value="${getSelect.patientAddr }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>생년월일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientBirth" name="patientBirth" value="${getSelect.patientBirth }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>연락처</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientTel" name="patientTel" value="${getSelect.patientTel }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비상연락처</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientFamilyTel" name="patientFamilyTel" value="${getSelect.patientFamilyTel }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>치매등급</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientGrade" name="patientGrade" value="${getSelect.patientGrade }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>질환</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientDisease" name="patientDisease" value="${getSelect.patientDisease }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>혈액형</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientBlood" name="patientBlood" value="${getSelect.patientBlood }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>복용중인약</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientMedication" name="patientMedication" value="${getSelect.patientMedication }">
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>특이사항</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientUnique" name="patientUnique" value="${getSelect.patientUnique }">
						</div>
					</div>
					<button class="w3-button w3-round w3-dark-grey" type="reset">&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey" id="updateButton"type="button" >&nbsp;&nbsp;수정&nbsp;&nbsp;</button>
				</form>
			</div>
			<div class="w3-col m4">&nbsp;</div>
		</div>

	</div>
</div>