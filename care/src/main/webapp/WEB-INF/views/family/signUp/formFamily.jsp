<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script>
$(function(){
    $(".pw-check").keyup(function () {
        var pwd1 = $('#familyPw').val();
        var pwd2 = $('#familyPw2').val();
 
        if(pwd1 != "" || pwd2 != ""){
            if (pwd1 == pwd2) {
                $("#alert-success").css('display', 'inline-block');
                $("#alert-danger").css('display', 'none');
            } else {
                $("#alert-success").css('display', 'none');
                $("#alert-danger").css('display', 'inline-block');
            }        	
        }
    });
    $("input:text[numberOnly]").on("keyup", function() {
        $(this).val($(this).val().replace(/[^0-9]/g,""));
    });
})
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
				<input class="w3-input w3-border" type="email" placeholder="abc@def.com" id="familyEmail" name="familyEmail"> 
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>비밀번호</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border pw-check" type="password" placeholder="" id="familyPw" name="familyPw">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>비밀번호확인</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border pw-check" type="password" placeholder="" id="familyPw2" name="familyPw2">
				<span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
				<span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
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
			<div class="w3-col s4 m4">
				<p>
				<input type="radio" id="male" name="gender" value="남">
				<label for="male">남</label>
				</p>
			</div>
			<div class="w3-col s4 m4">
				<p>
				<input type="radio" id="female" name="gender" value="여">
				<label for="female">여</label>
				</p>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>생년월일</p></div>
			<div class="w3-col s4 m4"><input class="w3-input w3-border" type="text" placeholder="년" id="familyBirthY" name="familyBirthY" numberOnly></div>
			<div class="w3-col s2 m2"><input class="w3-input w3-border" type="text" placeholder="월" id="familyBirthM" name="familyBirthM" numberOnly></div>
			<div class="w3-col s2 m2"><input class="w3-input w3-border" type="text" placeholder="일" id="familyBirthD" name="familyBirthD" numberOnly></div>
			<!-- 
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="date" placeholder="" id="familyBirth" name="familyBirth">
			</div>
			 -->
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
				<input class="w3-input w3-border" type="text" placeholder="숫자만" id="familyTel" name="familyTel" numberOnly>
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
			<div class="w3-col s4 m4">
				<p>
				<input type="radio" id="male" name="gender" value="남">
				<label for="male">남</label>
				</p>
			</div>
			<div class="w3-col s4 m4">
				<p>
				<input type="radio" id="female" name="gender" value="여">
				<label for="female">여</label>
				</p>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>생년월일</p></div>
			<div class="w3-col s4 m4"><input class="w3-input w3-border" type="text" placeholder="년" id="patientBirthY" name="patientBirthY" numberOnly></div>
			<div class="w3-col s2 m2"><input class="w3-input w3-border" type="text" placeholder="월" id="patientBirthM" name="patientBirthM" numberOnly></div>
			<div class="w3-col s2 m2"><input class="w3-input w3-border" type="text" placeholder="일" id="patientBirthD" name="patientBirthD" numberOnly></div>
			<!-- 						
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="patientBirth" name="patientBirth">
			</div>
			 -->
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>연락처</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="숫자만" id="patientTel" name="patientTel" numberOnly>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>비상연락처</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="숫자만" id="patientFamilyTel" name="patientFamilyTel" numberOnly>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>치매등급</p></div>
			<div class="w3-col s8 m8">
			  <p>
				<select name="patientGrade">
				  <option value=" ">선택</option>
				  <option value="1등급">1등급</option>
				  <option value="2등급">2등급</option>
				  <option value="3등급">3등급</option>
				  <option value="4등급">4등급</option>
				  <option value="5등급">5등급</option>
				  <option value="인지지원등급">인지지원등급</option>
				</select>
			  </p>
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
				<input class="w3-input w3-border" type="text" placeholder="예) ABO RH ..." id="patientBlood" name="patientBlood">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>복용중인약</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="예) 당뇨, 고혈압 .. " id="patientMedication" name="patientMedication">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>안심구역</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="예)5000m(숫자만 입력)" id="patientZone" name="patientZone" numberOnly>
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
