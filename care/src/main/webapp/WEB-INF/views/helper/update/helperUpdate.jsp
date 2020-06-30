<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="${pageContext.request.contextPath}/resources/common/js/user-info.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/core.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/sha256.min.js"></script>


<script>

</script>   
<!DOCTYPE html>
<div class="w3-container w3-center">
	<div class="w3-padding-large">
		<div class="w3-row">
			<div class="w3-col m4">&nbsp;</div>
			<div class="w3-col m4">
				<form action="helperUpdate.do" id="helperUpdate" name="helperUpdate">
					<h1>간병인 회원가입</h1>
				 	
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이메일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperEmail" name="helperEmail" value="${getSelect.helperEmail }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비밀번호</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border pw-check" type="password" placeholder="" id="helperPw" name="helperPw" value="">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>비밀번호확인</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border pw-check" type="password" placeholder="" id="helperPw2" name="helperPw2" value="">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>이름</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperName" name="helperName" value="${getSelect.helperName }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>성별</p>	</div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperSex" name="helperSex" value="${getSelect.helperSex }" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>생년월일</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperBirth" name="helperBirth" value="<fmt:formatDate value="${getSelect.helperBirth}" pattern="yyyy-MM-dd" />" readonly>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>주소</p>	</div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border add-juso" type="text" placeholder="" id="helperAddr" name="helperAddr" value="${getSelect.helperAddr }"><button type="button" onclick="jusoPopup(0)">주소찾기</button>
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>연락처</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperTel" name="helperTel" value="${getSelect.helperTel }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>희망근무지역</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperWorkArea" name="helperWorkArea" value="${getSelect.helperWorkArea }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>근무시작시간</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperStartTime" name="helperStartTime" value="${getSelect.helperStartTime }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>근무종료시간</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperEndTime" name="helperEndTime" value="${getSelect.helperEndTime }">
						</div>
					</div>
					
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>특이사항</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="helperUnique" name="helperUnique" value="${getSelect.helperUnique }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>수수료 등급</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="text" placeholder="" id="commissionGrade" name="commissionGrade" value="${getSelect.commissionGrade }">
						</div>
					</div>
					<div class="w3-row">
						<div class="w3-col s4 m4"><p>프로필 사진</p></div>
						<div class="w3-col s8 m8">
							<input class="w3-input w3-border" type="file" placeholder="" id="helperProfile" name="helperProfile">
						</div>
					</div>
					<button class="w3-button w3-round w3-dark-grey" type="reset" onclick="loaction.href=''">&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey"  type="submit">&nbsp;&nbsp;수정&nbsp;&nbsp;</button>
				</form>

			</div>
			<div class="w3-col m4">&nbsp;</div>
		</div>


	</div>
</div>