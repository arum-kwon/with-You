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
				<option value="" selected="selected">선택</option>
				<option value="대구" ${param.helperWorkArea eq "대구" ? "selected" :""}>대구</option>
				<option value="서울" ${param.helperWorkArea eq "서울" ? "selected" :""}>서울</option>
				<option value="인천" ${param.helperWorkArea eq "인천" ? "selected" :""}>인천</option>
				<option value="부산" ${param.helperWorkArea eq "부산" ? "selected" :""}>부산</option>
				<option value="경북" ${param.helperWorkArea eq "경북" ? "selected" :""}>경북</option>
				<option value="경남" ${param.helperWorkArea eq "경남" ? "selected" :""}>경남</option>
				<option value="경기" ${param.helperWorkArea eq "경기" ? "selected" :""}>경기</option>
				<option value="대전" ${param.helperWorkArea eq "대전" ? "selected" :""}>대전</option>
				<option value="광주" ${param.helperWorkArea eq "광주" ? "selected" :""}>광주</option>
				<option value="울산" ${param.helperWorkArea eq "울산" ? "selected" :""}>울산</option>
				<option value="충북" ${param.helperWorkArea eq "충북" ? "selected" :""}>충북</option>
				<option value="충남" ${param.helperWorkArea eq "충남" ? "selected" :""}>충남</option>
				<option value="세종" ${param.helperWorkArea eq "세종" ? "selected" :""}>세종</option>
				<option value="전남" ${param.helperWorkArea eq "전남" ? "selected" :""}>전남</option>
				<option value="전북" ${param.helperWorkArea eq "전북" ? "selected" :""}>전북</option>
				<option value="제주" ${param.helperWorkArea eq "제주" ? "selected" :""}>제주</option>
			</select>
			
		<label for="helperStartTime">돌봄시작시간</label>
			<select name="helperStartTime" id="helperStartTime">
				<option value="" selected="selected">선택</option>
				<option value="0" ${param.helperStartTime eq "0" ? "selected" :""}>00</option>
				<option value="1" ${param.helperStartTime eq "1" ? "selected" :""}>01</option>
				<option value="2" ${param.helperStartTime eq "2" ? "selected" :""}>02</option>
				<option value="3" ${param.helperStartTime eq "3" ? "selected" :""}>03</option>
				<option value="4" ${param.helperStartTime eq "4" ? "selected" :""}>04</option>
				<option value="5" ${param.helperStartTime eq "5" ? "selected" :""}>05</option>
				<option value="6" ${param.helperStartTime eq "6" ? "selected" :""}>06</option>
				<option value="7" ${param.helperStartTime eq "7" ? "selected" :""}>07</option>
				<option value="8" ${param.helperStartTime eq "8" ? "selected" :""}>08</option>
				<option value="9" ${param.helperStartTime eq "9" ? "selected" :""}>09</option>
				<option value="10" ${param.helperStartTime eq "10" ? "selected" :""}>10</option>
				<option value="11" ${param.helperStartTime eq "11" ? "selected" :""}>11</option>
				<option value="12" ${param.helperStartTime eq "12" ? "selected" :""}>12</option>
				<option value="13" ${param.helperStartTime eq "13" ? "selected" :""}>13</option>
				<option value="14" ${param.helperStartTime eq "14" ? "selected" :""}>14</option>
				<option value="15" ${param.helperStartTime eq "15" ? "selected" :""}>15</option>
				<option value="16" ${param.helperStartTime eq "16" ? "selected" :""}>16</option>
				<option value="17" ${param.helperStartTime eq "17" ? "selected" :""}>17</option>
				<option value="18" ${param.helperStartTime eq "18" ? "selected" :""}>18</option>
				<option value="19" ${param.helperStartTime eq "19" ? "selected" :""}>19</option>
				<option value="20" ${param.helperStartTime eq "20" ? "selected" :""}>20</option>
				<option value="21" ${param.helperStartTime eq "21" ? "selected" :""}>21</option>
				<option value="22" ${param.helperStartTime eq "22" ? "selected" :""}>22</option>
				<option value="23" ${param.helperStartTime eq "23" ? "selected" :""}>23</option>
				<option value="24" ${param.helperStartTime eq "24" ? "selected" :""}>24</option>
			</select>	
		
		<label for="helperEndTime">돌봄종료시간</label>
			<select name="helperEndTime" id="helperEndTime">
				<option value="" selected="selected">선택</option>
				<option value="0" ${param.helperEndTime eq "0" ? "selected" :""}>00</option>
				<option value="1" ${param.helperEndTime eq "1" ? "selected" :""}>01</option>
				<option value="2" ${param.helperEndTime eq "2" ? "selected" :""}>02</option>
				<option value="3" ${param.helperEndTime eq "3" ? "selected" :""}>03</option>
				<option value="4" ${param.helperEndTime eq "4" ? "selected" :""}>04</option>
				<option value="5" ${param.helperEndTime eq "5" ? "selected" :""}>05</option>
				<option value="6" ${param.helperEndTime eq "6" ? "selected" :""}>06</option>
				<option value="7" ${param.helperEndTime eq "7" ? "selected" :""}>07</option>
				<option value="8" ${param.helperEndTime eq "8" ? "selected" :""}>08</option>
				<option value="9" ${param.helperEndTime eq "9" ? "selected" :""}>09</option>
				<option value="10" ${param.helperEndTime eq "10" ? "selected" :""}>10</option>
				<option value="11" ${param.helperEndTime eq "11" ? "selected" :""}>11</option>
				<option value="12" ${param.helperEndTime eq "12" ? "selected" :""}>12</option>
				<option value="13" ${param.helperEndTime eq "13" ? "selected" :""}>13</option>
				<option value="14" ${param.helperEndTime eq "14" ? "selected" :""}>14</option>
				<option value="15" ${param.helperEndTime eq "15" ? "selected" :""}>15</option>
				<option value="16" ${param.helperEndTime eq "16" ? "selected" :""}>16</option>
				<option value="17" ${param.helperEndTime eq "17" ? "selected" :""}>17</option>
				<option value="18" ${param.helperEndTime eq "18" ? "selected" :""}>18</option>
				<option value="19" ${param.helperEndTime eq "19" ? "selected" :""}>19</option>
				<option value="20" ${param.helperEndTime eq "20" ? "selected" :""}>20</option>
				<option value="21" ${param.helperEndTime eq "21" ? "selected" :""}>21</option>
				<option value="22" ${param.helperEndTime eq "22" ? "selected" :""}>22</option>
				<option value="23" ${param.helperEndTime eq "23" ? "selected" :""}>23</option>
				<option value="24" ${param.helperEndTime eq "24" ? "selected" :""}>24</option>
			</select>
			
		<label for="certifiName">자격증보유</label>
			<select name="certifiName" id="certifiName" >
				<option value="" selected="selected">선택</option>
				<option value="y" ${param.certifiName eq "y" ? "selected" :"" }>보유</option>
				<option value="n" ${param.certifiName eq "n" ? "selected" :"" }>미보유</option>				
			</select>
			
			<input type="hidden" id="helperNo" name="helperNo">
			
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
	

	<script type="text/javascript">
		//조회된 간병인 목록 클릭시 간병인 상세정보 페이지 이동 함수
		function selectOne(key) {
			document.frm.action="helperInfo.do";	//frm 에서 저장한 조건value 가지고 간다
			document.frm.helperNo.value=key;
			console.log(key);
			document.frm.submit(); 
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
			else if(document.frm.certifiName.value == '') {
				alert('간병인 자격유무를 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.certifiName.focus();
			}
			else {
				document.frm.submit();
			}
		}
	</script>

</body>
</html>