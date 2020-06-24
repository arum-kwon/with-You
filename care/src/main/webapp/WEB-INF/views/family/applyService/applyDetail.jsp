<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<div class="col-xl-6 col-md-12 col-sm-12" >
		<br> 
		<img src="uploadProfile/${applyDetail.helperProfile }" onerror='this.src="resources/img/no_image.png"' id="viewProfile" class="rounded-circle" width="100" height="100"><br/>
		간병인 : ${applyDetail.helperName} 님<br/>
		요청서비스날짜 : ${applyDetail.serviceDate }<br/>
		돌봄시작시간 : ${applyDetail.serviceStartTime }시<br/>
		돌봄종료시간 : ${applyDetail.serviceEndTime }시<br/>
		<div><br/></div>
	</div>
	
	<div class="col-xl-6 col-md-12 col-sm-12" id="centerDiv">
	<div><br/></div>
		실제출근시간 : ${applyDetail2.realStartTime }<br/>
		실제퇴근시간 : ${applyDetail2.realEndTime }<br/>
		보호자요청사항 : ${applyDetail.serviceDemand }<br/>
		결제예정금액 : ${applyDetail.servicePrice }원<br/>
	</div>
		<div><br/></div>
		<c:choose>
			<c:when test="${applyDetail.serviceStatus eq 'S02' }">
				<button type="button" id="btnServiceReady" class="btn btn-primary" onclick="requestPay()">결제하기</button>
			</c:when>
			<c:when test="${applyDetail.serviceStatus eq 'S03' }">
				<button type="button" id="btnServiceReady" class="btn btn-success" onclick="requestPay()" disabled>결제완료</button>
			</c:when>
		</c:choose>
	<div><br/></div>
	
	
	
<!-- 즐겨찾기 버튼 + Form -->
<form id="likeFrm" name="likeFrm" action="bestLike.do" method="post">
	<c:choose>
		<c:when test="${empty applyDetail4.familyNo}">
			<a href="#" onClick="addlike(); return false;">
		  		<img src="${pageContext.request.contextPath}/resources/img/bestLike/bestLike.png" style="height:30px"  />
		  		<h4>즐겨찾기 등록/삭제</h4>
		  	</a>
		</c:when>
		<c:when test="${not empty applyDetail4.familyNo}"> 
			<a href="javascript:void(0);" onClick="disLike();">
		  		<img src="${pageContext.request.contextPath}/resources/img/bestLike/bestLike2.png" style="height:30px"  />
		  		<h4>즐겨찾기 등록/삭제</h4>
		  	</a>
		</c:when>
	</c:choose> 
	<div><br/></div>
	<input type="hidden" id="helperNo" name="helperNo" value="${applyDetail.helperNo }">
	<input type="hidden" id="familyNo" name="familyNo" value="${applyDetail.familyNo }">
</form>
<!-- 좋아요 버튼 + Form 끝-->
	
	
	
	<!--  후기 및 평점 작성  -->
	<div>
	<form>
		<label for="comment">후기 및 평점:</label>
    	<textarea class="form-control" rows="5" id="" name=""></textarea>
    	
   	<!-- 취소 저장 메인 버튼 모음 -->
   	
    	<div><br/></div>
    	<button type=button>취소</button>
    	<button type=button>저장</button>
    	<button type="button" name="main" onclick="location.href='familyMain.do'">메인</button>
	</form>
	</div>
</div>



				<!-- 즐겨찾기 자바스크립트 -->
<script type="text/javascript">
	function addlike() {
//		document.likeFrm.helperNo.value=key;
		document.likeFrm.action="addLike.do";
		document.likeFrm.submit();
	}
	function disLike() {
		document.likeFrm.action="disLike.do";
		document.likeFrm.submit();
	}
</script>
				<!-- 즐겨찾기 자바스크립트 끝-->




									<!-- 결제 스크립트 -->
									
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script type="text/javascript">
	var IMP = window.IMP; // 생략해도 괜찮습니다.
	IMP.init("imp07126152"); 
	
	function requestPay() {
	  // IMP.request_pay(param, callback) 호출
	IMP.request_pay({ // param
	  	pg : 'kakaopay',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '부탁Care: 돌봄서비스',	// order 테이블에 들어갈 주문명 혹은 주문 번호
	    amount : ${applyDetail3.servicePrice},	//결제금액
	    buyer_email : '${applyDetail3.familyEmail}',	//구매자 정보
	    buyer_name : '${applyDetail3.familyNo}',	//구매자 등록번호 (보호자등록번호 familyNo)
	    buyer_tel : '${applyDetail3.familyTel}',
	    buyer_addr : '${applyDetail.serviceNo}',		//서비스 등록번호 (serviceNo)
	    buyer_postcode : '${applyDetail3.familyName}',	//구매자 성명 (보호자 성명 familyName)
//    	m_redirect_url : '/savePayResult.do'	// 결제 완료 후 보낼 컨트롤러의 메소드명
	  }, 
	  
		 function(rsp) { // callback
			    if ( rsp.success ) {
			        //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	                jQuery.ajax({
	                    url: "savePayResult.do", //cross-domain error가 발생하지 않도록 주의해주세요
	                    type: 'POST',
	                    dataType: 'json',
	                    data: { imp_uid:rsp.imp_uid, 
	                    		merchant_uid:rsp.merchant_uid, 
	                    		apply_num:rsp.apply_num, 
	                    		paid_amount: rsp.paid_amount, 
	                    		buyer_name:rsp.buyer_name,
	                    		buyer_addr:rsp.buyer_addr
	                    	}
	                    
	                }).done(function(data) {
	                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
				   	var msg = '결제가 완료되었습니다.\n';
				        msg += '고유ID : ' + rsp.imp_uid + '\n';
				        msg += '상점 거래ID : ' + rsp.merchant_uid + '\n';
				        msg += '결제 금액 : ' + rsp.paid_amount + '\n';
				        msg += '카드 승인번호 : ' + rsp.apply_num + '\n';
				        msg += '===========================\n'
				        msg += '주문명 : ' + rsp.name + '\n';
				        msg += '주문자 성명 : ' + rsp.buyer_postcode + '\n';
				        msg += '주문자 연락처 : ' + rsp.buyer_tel + '\n';
				        msg += '서비스신청번호: ' + rsp.buyer_addr + '\n';
				        //document.console.log(rsp.imp_uid);
				        alert(msg);
				        location.href='<%=request.getContextPath()%>/applyList.do';
				    })
			    }else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				    	alert(msg);
				    }
				});
	}
</script>

</body>
</html>