<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
	.container-fluid {
		border: solid 1px;
	}
</style>

</head>
<body>

<!-- 간병인 상세정보 섹션 -->
<div class="container">
	<h1>즐겨찾기 목록 - 간병인 정보</h1>
	<div class="">
		<img src="uploadProfile/${likeDetail.helperProfile }" onerror='this.src="resources/img/no_image.png"' id="viewProfile" class="rounded-circle" width="100" height="100"><br/>
		${likeDetail.helperName }님 / ${likeDetail.helperSex }<br />
		<div><br/></div>
		
		희망근무지역: ${likeDetail.helperWorkArea }<br/>
		희망근무시간: ${likeDetail.helperStartTime } 시 ~ ${likeDetail.helperEndTime }시<br/>
		특이사항: ${likeDetail.helperUnique }<br/>
		자격면허: ${likeDetail.certifiName }<br/>
		경력사항: ${likeDetail.careerOrgan } / ${likeDetail.careerStart } 부터 ~ ${likeDetail.careerEnd } 까지<br/>
		<br/>

		<!-- 후기 및 평점 영역 -->
		후기 및 평점 :<br />
			<c:choose>
				<c:when test="${empty reviewList}">
					<img src="${pageContext.request.contextPath}/resources/img/noContents.png" style="height:50px"  /><br/>
					아직 작성된 후기가 없습니다.
				</c:when>
				<c:otherwise>
					<c:forEach var="list" items="${reviewList }">
						<div class="container-fluid">
							<div>
							별점 : ${list.reviewStar } / 10
							</div>
							<div>
							작성자 : ${list.familyName }
							</div>
							<div>
							작성일자: ${list.reviewDate }
							</div>
							<div>
							내용 : ${list.reviewContents }		
							</div>
							<div>
							사진첨부 : ${list.reviewFile }		
							</div>
						</div><br/>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		
	</div>
</div>

<div><br/></div>
<div><br/></div>
<!-- 간병인 상세정보 섹션 끗 -->


<!-- 즐겨찾기 안에서 서비스 신청하기 섹션 -->
<div class="container">
	<h1>즐겨찾기 목록 - 서비스신청</h1>
	<form id="applyFrm" name="applyFrm" action="applyInLike.do" method="post">
		<label for="serviceStartTime">돌봄시작시간</label>
			<select name="serviceStartTime" id="serviceStartTime">
				<option value="" selected="selected">선택</option>
					<c:forEach begin="${likeDetail.helperStartTime}" end="${likeDetail.helperEndTime }" var="startTime">
				 		<option value="${startTime }">${startTime }</option>
					</c:forEach>
			</select>
		<label for="serviceEndTime">돌봄종료시간</label>
			<select name="serviceEndTime" id="serviceEndTime">
				<option value="" selected="selected">선택</option>
					<c:forEach begin="${likeDetail.helperStartTime}" end="${likeDetail.helperEndTime }" var="endTime">
						<option value="${endTime }">${endTime }</option>
					</c:forEach>
			</select>
		희망 요청 날짜 <input type="date" id="serviceDate" name="serviceDate"><br/>
		<div class="form-group">
		      <label for="comment">보호자 요청사항:</label>
		      <textarea class="form-control" rows="5" id="serviceDemand" name="serviceDemand"></textarea>
   			</div>
		<div><br/>
			<button type="button" id="btnApply" class="btn btn-primary" onclick="serviceApply()">신청하기</button>
		</div>	
		
		<input type="hidden" id="serviceArea" name="serviceArea" value="${likeDetail.helperWorkArea }">
		<input type="hidden" id="familyNo" name="familyNo" value="${loginOk.familyNo }">
		<input type="hidden" id="helperNo" name="helperNo" value="${likeDetail.helperNo }">
	</form>
</div>

<script type="text/javascript">
	function serviceApply(){
		var doc = document.applyFrm;
		
		if(doc.serviceStartTime.value == '') {
			alert('돌봄서비스 시작시간을 선택해주세요');
			doc.serviceStartTime.focus();
		} 
		else if(doc.serviceEndTime.value == '') {
			alert('돌봄서비스 종료시간을 선택해주세요');
			doc.serviceEndTime.focus();
		}
		else if(doc.serviceEndTime.value <= doc.serviceStartTime.value) {
			alert('돌봄종료시간은 시작시간보다 커야합니다');
			doc.serviceEndTime.focus();
		}		
		else if(doc.serviceDate.value == '') {
			alert('돌봄서비스 날짜를 선택해주세요');
			doc.serviceDate.focus();
		} 
		else if( confirm(
				'아래의 내용과 같이 돌봄서비스를 신청합니다.' +'\n'+ 
				'"서비스신청내역" 메뉴에서 결제 등 진행상황을 확인 하실 수 있습니다.' +'\n'+
				'\n'+
				'<신청내용>' +'\n'+
				'신청자 성명: ' + '${loginOk.familyName}'+'\n'+
				'간병인 성명: ' + '${likeDetail.helperName}'+'\n'+
				'요청시간 : ' + doc.serviceStartTime.value + ' 시부터 ~ '+ doc.serviceEndTime.value +' 시까지 ('+ (doc.serviceEndTime.value - doc.serviceStartTime.value) +'시간)' +'\n'+
				'요청지역 : ' +	 '${likeDetail.helperWorkArea }' +'\n'+
				'요청날짜 : ' + doc.serviceDate.value +'\n'+
				'요청메모 : ' + doc.serviceDemand.value +'\n'+
				'결제예정금액 : ' + (doc.serviceEndTime.value - doc.serviceStartTime.value)*10000 +'원'+'\n'+
				'    * (금액 = 시간 X 10,000원)'
				) == true) {
			alert("신청이 완료 되었습니다"+"\n"+"'신청내역'메뉴에서 내용을 확인 하실 수 있습니다.")
			doc.submit();
		} else {
			return;
		}
	}
</script>
<!-- 즐겨찾기 안에서 서비스 신청하기 섹션 끝-->

</body>
</html>