<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>간병인 정보</h1>
	<div>
		이름: ${helperInfo.helperName }<br />
		성별: ${helperInfo.helperSex }<br />
		이메일: ${helperInfo.helperEmail }<br />
		희망근무지역: ${helperInfo.helperWorkArea }<br />
		돌봄가능시간: ${helperInfo.helperStartTime }시~${helperInfo.helperEndTime }시<br />
		요구사항: ${helperInfo.helperUnique }<br />
		프로필사진: ${helperInfo.helperProfile }<br />
		자격증명: ${helperInfo.certifiName }<br />
	</div>
	<div><br />
		<input type="button" name="main" value="메인화면" onclick="location.href='home.do'">
		<input type="button" name="helperList" value="조회목록" onclick="location.href='helperList.do'">
	</div>
	<div><br /></div>
	<h1>서비스 신청하기</h1>
		<div>
			<form id="orderFrm" name="orderFrm" action="applyService.do" method="post">
				서비스 요청시간 : ${searchFilterVo.helperStartTime }시 부터~${searchFilterVo.helperEndTime }시 까지 <br />
				서비스 지역 : ${searchFilterVo.helperWorkArea }<br />
				자격보유 : 
					<c:choose>
						<c:when test="${searchFilterVo.certifiName eq 'y'}">${helperInfo.certifiName }</c:when>
						<c:otherwise>미보유</c:otherwise>
					</c:choose>
					
				<br />
				서비스 날짜:<input type="date" id="serviceDate" name="serviceDate"><br />
				보호자 요청사항: <textarea id="serviceDemand" name="serviceDemand"></textarea><br />
				<div><br /></div>
				<input type="button" id="btnOrder" name="btnOrder" value="신청하기" onclick="orderInfo()">
				<input type="hidden" id="serviceStartTime" name="serviceStartTime" value="${searchFilterVo.helperStartTime }">
				<input type="hidden" id="serviceEndTime" name="serviceEndTime" value="${searchFilterVo.helperEndTime }">
				<input type="hidden" id="serviceArea" name="serviceArea" value="${searchFilterVo.helperWorkArea }">
			</form>
		</div>
</div>

<script type="text/javascript">
	function orderInfo(){
		if(document.orderFrm.serviceDate.value == '') {
			alert('돌봄서비스 날짜를 선택해주세요');
			document.orderFrm.serviceDate.focus();
		} 
		else if( confirm('아래의 내용과 같이 돌봄서비스를 신청합니다.' +'\n'+ 
				'"서비스신청내역" 메뉴에서 결제 등 진행상황을 확인 하실 수 있습니다.' +'\n'+
				'\n'+
				'<신청내용>' +'\n'+
				'요청시간 : ' + ${searchFilterVo.helperStartTime }+ ' 시부터~'+${searchFilterVo.helperEndTime }+' 시까지 ('+(parseInt('${searchFilterVo.helperEndTime }')-parseInt('${searchFilterVo.helperStartTime }'))+'시간)' +'\n'+
				'요청지역 : ' +	 '${searchFilterVo.helperWorkArea }' +'\n'+
				'요청날짜 : ' + document.orderFrm.serviceDate.value +'\n'+
				'요청메모 : ' + document.orderFrm.serviceDemand.value +'\n'+
				'\n'+
				'결제금액 : ' + (parseInt('${searchFilterVo.helperEndTime }')-parseInt('${searchFilterVo.helperStartTime }'))*10000
				) == true) {
			alert("신청이 완료 되었습니다")
			document.orderFrm.submit();
		} else {
			return;
		}
	}
</script>

</body>
</html>