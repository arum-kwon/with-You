<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="w3-container w3-center">
	<div class="w3-padding-large">

		<div class="w3-row">
			<div class="w3-col m4">&nbsp;</div>
			<div class="w3-col m4">
				<form id="updateForm" action="patientUpdate.do">
					<h1>환저정보 수정</h1>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이름</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientName" name="patientName" value="${getSelect.patientName }" readonly>
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>성별</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientSex" name="patientSex" value="${getSelect.patientSex }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>주소</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border add-juso" type="text" placeholder="" id="patientAddr" name="patientAddr" value="${getSelect.patientAddr }" >
							<button type="button" onclick="jusoPopup(0)">주소찾기</button>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>생년월일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientBirth" name="patientBirth" value="<fmt:formatDate value="${getSelect.patientBirth}" pattern="yyyy-MM-dd" />" readonly/>
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
							<input class="w3-input w3-border" type="text" placeholder="" id="patientGrade" name="patientGrade" value="${getSelect.patientGrade }" readonly>
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
							<input class="w3-input w3-border" type="text" placeholder="" id="patientBlood" name="patientBlood" value="${getSelect.patientBlood }" readonly>
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
					<div class="w3-row">
					<div class="w3-col s4 m4"><p>프로필 사진</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="file" placeholder="" id="helperProfile" name="helperProfile">
						</div>
					</div>
					<button class="w3-button w3-round w3-dark-grey" type="reset">&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey" id="updateButton"type="submit" >&nbsp;&nbsp;수정&nbsp;&nbsp;</button>
				</form>
			</div>
			<div class="w3-col m4">&nbsp;</div>
		</div>

	</div>
</div>
</body>
</html>