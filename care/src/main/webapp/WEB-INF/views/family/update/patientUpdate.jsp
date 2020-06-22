<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

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
				<form id="updateForm" action="familyUpdate.do">
					<h1>ȯ������</h1>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>�̸�</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientName" name="patientName" value="${getSelect.patientName }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>����</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientSex" name="patientSex" value="${getSelect.patientSex }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>�ּ�</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientAddr" name="patientAddr" value="${getSelect.patientAddr }" >
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>�������</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientBirth" name="patientBirth" value="${getSelect.patientBirth }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>����ó</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientTel" name="patientTel" value="${getSelect.patientTel }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>��󿬶�ó</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientFamilyTel" name="patientFamilyTel" value="${getSelect.patientFamilyTel }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>ġ�ŵ��</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientGrade" name="patientGrade" value="${getSelect.patientGrade }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>��ȯ</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientDisease" name="patientDisease" value="${getSelect.patientDisease }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>������</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientBlood" name="patientBlood" value="${getSelect.patientBlood }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>�������ξ�</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientMedication" name="patientMedication" value="${getSelect.patientMedication }">
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>Ư�̻���</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientUnique" name="patientUnique" value="${getSelect.patientUnique }">
						</div>
					</div>
					<button class="w3-button w3-round w3-dark-grey" type="reset">&nbsp;&nbsp;���&nbsp;&nbsp;</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey" id="updateButton"type="button" >&nbsp;&nbsp;����&nbsp;&nbsp;</button>
				</form>
			</div>
			<div class="w3-col m4">&nbsp;</div>
		</div>

	</div>
</div>
</body>
</html>