<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div align="center">
	<form id="frm" name="frm" action="helperList.do" method="post">
		<label for="helperWorkArea">근무지역</label>
			<select name="helperWorkArea" id="helperWorkArea">
				<option value="">선택</option>
				<option value="대구">대구</option>
				<option value="서울">서울</option>
				<option value="인천">인천</option>
				<option value="부산">부산</option>
				<option value="경북">경북</option>
				<option value="경남">경남</option>
				<option value="경기">경기</option>
				<option value="대전">대전</option>
				<option value="광주">광주</option>
				<option value="울산">울산</option>
				<option value="충북">충북</option>
				<option value="충남">충남</option>
				<option value="세종">세종</option>
				<option value="전남">전남</option>
				<option value="전북">전북</option>
				<option value="제주">제주</option>
			</select>
			
		<label for="helperStartTime">돌봄시작시간</label>
			<select name="helperStartTime" id="helperStartTime">
				<option value="">선택</option>
				<option value="0">00</option>
				<option value="1">01</option>
				<option value="2">02</option>
				<option value="3">03</option>
				<option value="4">04</option>
				<option value="5">05</option>
				<option value="6">06</option>
				<option value="7">07</option>
				<option value="8">08</option>
				<option value="9">09</option>
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
		
		<label for="helperEndTime">돌봄종료시간</label>
			<select name="helperEndTime" id="helperEndTime">
				<option value="">선택</option>
				<option value="0">00</option>
				<option value="1">01</option>
				<option value="2">02</option>
				<option value="3">03</option>
				<option value="4">04</option>
				<option value="5">05</option>
				<option value="6">06</option>
				<option value="7">07</option>
				<option value="8">08</option>
				<option value="9">09</option>
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
			
		<label for="certifiNo">자격증보유</label>
			<select name="certifiNo" id="certifiNo" >
				<option value="">선택</option>
				<option value="y">보유</option>
				<option value="">미보유</option>				
			</select>
			
			&nbsp;&nbsp;&nbsp;
		<input type="button" onclick="formCheck()" value="검색" id="sbmt" name="sbmt">
	</form>
</div>
<div><br/></div>
<div align="center">
	<table border="1">
		<tr>
			<td>프로필</td>
			<td>이름</td>
			<td>근무지역</td>
			<td>돌봄시작시간</td>
			<td>돌봄종료시간</td>
		</tr>
		<c:forEach var="list" items="${searchList }">
		<tr id="listTr" onclick="selectOne('${list.helperNo }')" 
				onMouseOver="this.style.backgroundColor='yellow';" onMouseOut="this.style.backgroundColor='';">
			<td>${list.helperProfile }</td>
			<td>${list.helperName }</td>
			<td>${list.helperWorkArea }</td>
			<td>${list.helperStartTime }</td>
			<td>${list.helperEndTime }</td>		
		</tr>
		</c:forEach>
	</table>
	<div><br />
		<input type="button" name="main" value="메인화면" onclick="location.href='home.do'">
	</div>
	
</div>
	<form id="hiddenFrm" name="hiddenFrm" action="helperInfo.do" method="post">
		<input type="hidden" id="helperNo" name="helperNo">
		
		<!-- 
		<input type="hidden" id="helperStartTime" name="helperStartTime">
		<input type="hidden" id="helperEndTime" name="helperEndTime">
		<input type="hidden" id="helperWorkArea" name="helperWorkArea">
		 -->
		 	
	</form>

	<script type="text/javascript">
		//조회된 간병인 목록 클릭시 간병인 상세정보 페이지 이동 함수
		function selectOne(key) {
			
			/*
			document.hiddenFrm.helperStartTime.value = document.frm.helperStartTime.value;
			document.hiddenFrm.helperEndTime.value = document.frm.helperEndTime.value;
			document.hiddenFrm.helperWorkArea.value = document.frm.helperWorkArea.value;
			*/
			
			document.hiddenFrm.helperNo.value=key;
			console.log(key);
			document.hiddenFrm.submit(); 
		}
		
		//필수 조건 선택여부 체크 함수
		function formCheck() {
			if(document.frm.helperWorkArea.value == '') {
				alert('돌봄서비스 지역을 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.helperWorkArea.focus();
			} 
			else if(document.frm.helperStartTime.value == '') {
				alert('돌봄서비스 시작시간을 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.helperStartTime.focus();
			}
			else if(document.frm.helperEndTime.value == '') {
				alert('돌봄서비스 종료시간을 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.helperEndTime.focus();
			}
			else if(document.frm.certifiNo.value == '') {
				alert('간병인 자격유무를 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.certifiNo.focus();
			}
			else {
				document.frm.submit();
			}
		}
	</script>

</body>
</html>