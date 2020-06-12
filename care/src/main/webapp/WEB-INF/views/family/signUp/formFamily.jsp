<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script>
    $(.pw-check).focusout(function () {
        var pwd1 = $(familyPw2).val();
        var pwd2 = $(familyPw2).val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                // 비밀번호 일치 이벤트 실행
            } else {
                // 비밀번호 불일치 이벤트 실행
            }
        }
    });
</script>


<div class="w3-container w3-center">
	<div class="w3-padding-large">

		<div class="w3-row">
			<div class="w3-col m4">&nbsp;</div>
			<div class="w3-col m4">
				<form action="checkEmailFamily.do">
					<h1>보호자 회원가입</h1>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이메일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyEmail" name="familyEmail"> 
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비밀번호</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border pw-check" type="text" placeholder="" id="familyPw" name="familyPw"><br>
						    <span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
						    <span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비밀번호확인</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border pw-check" type="text" placeholder="" id="familyPw2" name="familyPw2">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이름</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyName" name="familyName">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>성별</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="" name="">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>생년월일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyBirth" name="familyBirth">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>주소</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyAddr" name="familyAddr">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>연락처</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="familyTel" name="familyTel">
						</div>
					</div>

					<h1>환자정보</h1>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이름</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientName" name="patientName">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>성별</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientSex" name="patientSex">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>생년월일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientBirth" name="patientBirth">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>연락처</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientTel" name="patientTel">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비상연락처</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientFamilyTel" name="patientFamilyTel">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>치매등급</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientGrade" name="patientGrade">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>질환</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientDisease" name="patientDisease">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>혈액형</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientBlood" name="patientBlood">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>복용중인약</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientMedication" name="patientMedication">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>안심구역</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientZone" name="patientZone">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>특이사항</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="patientUnique" name="patientUnique">
						</div>
					</div>
					<button class="w3-button w3-round w3-dark-grey" type="reset">&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey" type="submit">&nbsp;&nbsp;등록&nbsp;&nbsp;</button>
				</form>
			</div>
			<div class="w3-col m4">&nbsp;</div>
		</div>

	</div>
</div>
