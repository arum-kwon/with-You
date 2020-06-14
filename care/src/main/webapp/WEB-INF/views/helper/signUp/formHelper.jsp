<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script>
$(function(){
    $(".pw-check").keyup(function () {
        var pwd1 = $('#helperPw').val();
        var pwd2 = $('#helperPw2').val();
 
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
	<form action="">
		<h1>간병인 회원가입</h1>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>이메일</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="email" placeholder="abc@def.com" id="helperEmail" name="helperEmail">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>비밀번호</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border pw-check" type="password" placeholder="" id="helperPw" name="helperPw">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>비밀번호확인</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border pw-check" type="password" placeholder="" id="helperPw2" name="helperPw2">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>이름</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperName" name="helperName">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>성별</p>	</div>
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
			<div class="w3-col s4 m4"><input class="w3-input w3-border" type="text" placeholder="년" id="helperBirthY" name="helperBirthY" numberOnly></div>
			<div class="w3-col s2 m2"><input class="w3-input w3-border" type="text" placeholder="월" id="helperBirthM" name="helperBirthM" numberOnly></div>
			<div class="w3-col s2 m2"><input class="w3-input w3-border" type="text" placeholder="일" id="helperBirthD" name="helperBirthD" numberOnly></div>
			<!-- 
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperBirth" name="helperBirth">
			</div>
			 -->
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>주소</p>	</div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperAddr" name="helperAddr">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>연락처</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="숫자만 입력" id="helperTel" name="helperTel" numberOnly>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>희망근무지역</p></div>
			<div class="w3-col s8 m8">
				<select name="helperWorkArea"> <!-- API 댕겨와야하는 일일까.. -->
				  <option value=" ">시/도</option>
				  <option value="1등급">1등급</option>
				  <option value="2등급">2등급</option>
				  <option value="3등급">3등급</option>
				  <option value="4등급">4등급</option>
				  <option value="5등급">5등급</option>
				  <option value="인지지원등급">인지지원등급</option>
				</select>
				<select name="helperWorkArea">
				  <option value=" ">시/군/구</option>
				  <option value="1등급">1등급</option>
				  <option value="2등급">2등급</option>
				  <option value="3등급">3등급</option>
				  <option value="4등급">4등급</option>
				  <option value="5등급">5등급</option>
				  <option value="인지지원등급">인지지원등급</option>
				</select>
				<input class="w3-input w3-border" type="text" placeholder="" id="helperWorkArea" name="helperWorkArea">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>근무시작시간</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperStartTime" name="helperStartTime">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>근무종료시간</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperEndTime" name="helperEndTime">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>프로필사진</p>	</div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperProfile" name="helperProfile">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>특기</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperUnique" name="helperUnique">
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
