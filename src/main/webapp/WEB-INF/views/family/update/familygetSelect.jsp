<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script type="text/javascript">
<%--	window.onload=function(){
		var button = document.getElementById("updateButton");
		   button.addEventListener("click",updateForm);
		   function updateForm(){
			   var familyAddr = document.getElementById("familyAddr").value
			   var familyTel = document.getElementById("familyTel").value
			   var patientAddr = document.getElementById("familyAddr").value
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
   --%>
 
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
							<input class="w3-input w3-border" type="text" placeholder="" id="familyEmail" name="familyEmail" value="${getSelect.familyEmail }" readonly> 
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이름</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyName" name="familyName" value="${getSelect.familyName }" readonly>
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>생년월일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyBirth" name="familyBirth" value="<fmt:formatDate value="${getSelect.familyBirth}" pattern="yyyy-MM-dd" />" readonly/>

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
					<button class="w3-button w3-round w3-dark-grey" type="reset">&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey" id="updateButton" type="submit">&nbsp;&nbsp;수정&nbsp;&nbsp;</button>
				</form>
			</div>
			<div class="w3-col m4">&nbsp;</div>
		</div>

	</div>
</div>