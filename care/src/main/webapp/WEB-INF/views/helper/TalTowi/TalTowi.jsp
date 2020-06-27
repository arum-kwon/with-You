<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<form action="taltowi.do" id="helperUpdate" name="helperUpdate">
					<h1>간병인 탈퇴</h1>		
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
					<button class="w3-button w3-round w3-dark-grey"  type="submit">&nbsp;&nbsp;회원탈퇴&nbsp;&nbsp;</button>
					&nbsp;&nbsp;&nbsp;
					<button class="w3-button w3-round w3-dark-grey" type="reset" onclick="loaction.href=''">&nbsp;&nbsp;취소&nbsp;&nbsp;</button>
				</form>
				<div>
					<c:if test="${msg==false}">
						비밀번호가 일치하지 않습니다.
					</c:if>
				</div>
			</div>
		</div>


	</div>
</div>