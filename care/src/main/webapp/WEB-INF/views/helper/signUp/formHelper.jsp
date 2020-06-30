<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/core.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/sha256.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/user-info.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/sign.js"></script>

<div class="">
<div class="">

<div class="">&nbsp;</div>
<div class="">
	<form action="createMemberHelper.do" id="mainFrm" name="mainFrm" method="post" encType="multipart/form-data">>
		<h1>간병인 회원가입</h1>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>이메일*</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border email-check" type="email" placeholder="abc@def.com" id="helperEmail" name="helperEmail" required> 
				<span id="email-success" style="display: none;">사용 가능</span>
				<span id="email-danger" style="display: none; color: #d92742; font-weight: bold; ">사용 불가</span>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>비밀번호*</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border pw-check" type="password" placeholder="" id="helperPw" name="helperPw" required>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>비밀번호확인*</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border pw-check" type="password" placeholder="" id="helperPw2" name="helperPw2" required>
				<span id="pw-success" style="display: none;">비밀번호 일치</span>
				<span id="pw-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호 불일치</span>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>이름*</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperName" name="helperName" required>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>성별*</p></div>
			<div class="w3-col s4 m4">
				<p>
				<input type="radio" id="h-male" name="helperSex" value="남" required>
				<label for="h-male">남</label>
				</p>
			</div>
			<div class="w3-col s4 m4">
				<p>
				<input type="radio" id="h-female" name="helperSex" value="여">
				<label for="h-female">여</label>
				</p>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>생년월일*</p></div>
			<div class="w3-col s4 m4"><input class="w3-input w3-border" type="text" placeholder="년" id="helperBirthY" name="helperBirthY" numberOnly required></div>
			<div class="w3-col s2 m2"><input class="w3-input w3-border" type="text" placeholder="월" id="helperBirthM" name="helperBirthM" numberOnly required></div>
			<div class="w3-col s2 m2"><input class="w3-input w3-border" type="text" placeholder="일" id="helperBirthD" name="helperBirthD" numberOnly required></div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>주소*</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border add-juso" type="text" placeholder="" id="helperAddr" name="helperAddr" required readOnly><button type="button" onclick="jusoPopup(0)">주소찾기</button>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>연락처*</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="숫자만" id="helperTel" name="helperTel" numberOnly required>
			</div>
		</div>

		<div class="w3-row">
			<div class="w3-col s4 m4"><p>희망근무지역*</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperWorkArea" name="helperWorkArea" required>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>희망근무시간*</p></div>
			<div class="w3-col s8 m8">
				<select name="helperStartTime" required>
				  <option value="">시작</option>
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
				  <option value="5">5</option>
				  <option value="6">6</option>
				  <option value="7">7</option>
				  <option value="8">8</option>
				  <option value="9">9</option>
				  <option value="10">10</option>
				  <option value="11">11</option>
				  <option value="12">12</option>
				  <option value="13">13</option>
				  <option value="14">14</option>
				  <option value="15">15</option>
				  <option value="16">16</option>
				  <option value="17">17</option>
				  <option value="18">18</option>
				  <option value="19">19</option>
				  <option value="20">20</option>
				  <option value="21">21</option>
				  <option value="22">22</option>
				  <option value="23">23</option>
				  <option value="24">24</option>
				</select>
				~
				<select name="helperEndTime" required>
				  <option value="">종료</option>
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
				  <option value="5">5</option>
				  <option value="6">6</option>
				  <option value="7">7</option>
				  <option value="8">8</option>
				  <option value="9">9</option>
				  <option value="10">10</option>
				  <option value="11">11</option>
				  <option value="12">12</option>
				  <option value="13">13</option>
				  <option value="14">14</option>
				  <option value="15">15</option>
				  <option value="16">16</option>
				  <option value="17">17</option>
				  <option value="18">18</option>
				  <option value="19">19</option>
				  <option value="20">20</option>
				  <option value="21">21</option>
				  <option value="22">22</option>
				  <option value="23">23</option>
				  <option value="24">24</option>
				</select>
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>프로필 사진</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="file" placeholder="" id="uploadFile" name="uploadFile">
			</div>
		</div>
		<div class="w3-row">
			<div class="w3-col s4 m4"><p>특이사항</p></div>
			<div class="w3-col s8 m8">
				<input class="w3-input w3-border" type="text" placeholder="" id="helperUnique" name="helperUnique">
			</div>
		</div>

		<button class="w3-button w3-round w3-dark-grey" type="reset">&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
		&nbsp;&nbsp;&nbsp;
		<button class="w3-button w3-round w3-dark-grey" type="button" onclick="fnSubmit(false)" >&nbsp;&nbsp;등록&nbsp;&nbsp;</button>
	</form>
</div>
<div class="w3-col m4">&nbsp;</div>

</div>
</div>






