<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>	
	
	#head{
		text-align : center;
		font-size : 25px;
	}
	th,td{
		
		font-size : 13px;
		text-align : center;
		font-family: 'Nanum Gothic', sans-serif;	
	}
	.confirm{
		margin-left : 130px;
		margin-bottom : 10px;
	}
</style>
<script>
	
</script>
<body>

<div class="container">         
  <table class="table table-bordered">
    <thead>
    <tr>
    	<th colspan="4" id="head" style="border-right:hidden; border-left:hidden;">환자정보</th>
    </tr>
      <tr>
       	<th style="width : 70px;">이름</th>
        <td style="width : 75px;">${serviceDetail.patientName }</td>
        <th>생년월일</th>
        <td><fmt:formatDate value="${serviceDetail.patientBirth}" pattern="YY.MM.DD" /></td>
        
      </tr>
    </thead>
    <tbody>
      <tr>
       	<th>성별</th>
       	<td>${serviceDetail.patientSex }</td>
       	<th>보호자 연락처</th>
       	<td>${serviceDetail.patientFamilyTel }</td>
      </tr>
      <tr>
        <th>주소</th>
        <td colspan="3">${serviceDetail.patientAddr }</td>
       		 
      </tr>
      <tr>
      	<th>질환</th>
       	<td>${serviceDetail.patientDisease }</td>
       	<th>치매등급</th>
       	<td>${serviceDetail.patientGrade }</td>
       </tr>
       <tr>
       	<th>혈액형</th>
        <td>${serviceDetail.patientBlood }</td>
        <th>복용중인약</th>
        <td>${serviceDetail.patientMedication }</td>
       </tr>
       <tr>
        <th><p style="margin-bottom : 2px;">특이</p>사항</th>         
        <td colspan="3">${serviceDetail.patientUnique }</td>           
       </tr>    
       <tr>
       	<th colspan="4" id="head" style="border-right:hidden; border-left:hidden;">간병인정보</th>
       </tr>
       <tr>
       		<th>근무시작시간</th>
            <td>${serviceDetail.serviceStartTime }</td>
            <th>근무종료시간</th>
            <td>${serviceDetail.serviceEndTime }</td>
       </tr>
       <tr>
       		<th><p style="margin-bottom : 2px;">결제</p>금액</th>
			<td colspan="3">${serviceDetail.servicePrice }</td>
       </tr>
       <tr>
       	    <th>수수료</th>
            <td colspan="3">${serviceDetail.commission }</td>
       </tr>
       <tr>
       		<th><p style="margin-bottom : 2px;">수령</p>금액</th>            
            <td colspan="3">${serviceDetail.helperPrice }</td>
       </tr>
       <tr>
       	<th><p style="margin-bottom : 2px;">요구</p>사항</th>
        <td colspan="3">${serviceDetail.serviceDemand }</td>
       </tr>
       <tr>
       		 <th colspan="4">후기</th>      		
       		  
       </tr>
          
      		<c:forEach var="rList" items="${reviewList}"> 
       <tr>
       		<td colspan="4">

       			별점 : ${rList.reviewStar }<br>
       			작성일 : <fmt:formatDate value="${rList.reviewDate}" pattern="yy.MM.dd HH:MM" /><br>
				내용 :	${rList.reviewContents }
				
       		</td>
       		
       </tr>
       </c:forEach>
      
    </tbody>
  </table>
</div>	
<div>
<!-- 컨트롤러에 값을 전달하기 위해 태그 추가-->
<form action="confirm.do" id="serviceFrm" name="serviceFrm">
	<input type="hidden" id="familyNo" name="familyNo" value="${serviceDetail.familyNo }">
	<input type="hidden" id="serviceNo" name="serviceNo" value="${serviceDetail.serviceNo }">
	<button type="button" id="confirm" class="confirm" onclick="getServiceNo('${serviceDetail.serviceNo }')">수락</button>
	<button type="button" id="reject" onclick="getRejectNo('${serviceDetail.serviceNo}')">거절</button>
	<input type="hidden" id="serviceNo" name="serviceNo">
</form>
</div>
<script type="text/javascript">
function getServiceNo(key){
	alert("요청을 수락했습니다.");
	document.serviceFrm.action="confirm.do";
	document.serviceFrm.submit();
}
function getRejectNo(key){
	alert("요청을 거절했습니다.")
	document.serviceFrm.action="reject.do";
	document.serviceFrm.submit();
}

</script>
</body>
</html>