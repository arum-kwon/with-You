<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
	#confirm{
		margin-left
	}
</style>
<body>

<div class="container">         
  <table class="table table-bordered">
    <thead>
    <tr>
    	<th colspan="4">환자정보</th>
    </tr>
      <tr>
       	<th>이름</th>
        <td>${serviceDetail.patientName }</td>
        <th>생년월일</th>
        <td>${serviceDetail.patientBirth }</td>
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
        <th colspan="2">특이사항</th>         
        <td colspan="2">${serviceDetail.patientUnique }</td>           
       </tr>    
       <tr>
       	<th colspan="4">간병인</th>
       </tr>
       <tr>
       		<th>근무시작시간</th>
            <td>${serviceDetail.serviceStartTime }</td>
            <th>근무종료시간</th>
            <td>${serviceDetail.serviceEndTime }</td>
       </tr>
       <tr>
       		<th>결제금액</th>
			<td colspan="3">${serviceDetail.servicePrice }</td>
       </tr>
       <tr>
       	    <th>수수료</th>
            <td colspan="3">${serviceDetail.commission }</td>
       </tr>
       <tr>
       		<th>수령금액</th>            
            <td colspan="3">${serviceDetail.helperPrice }</td>
       </tr>
       <tr>
       	<th >요구사항</th>
        <td colspan="3">${serviceDetail.serviceDemand }</td>
       </tr>
       <tr>
       		 <th colspan="4">후기</th>      		 
       </tr>
       <tr>
       		<td colspan="4"><textarea></textarea></td>            
       </tr>
    </tbody>
  </table>
</div>	
<div>
<!-- 컨트롤러에 값을 전달하기 위해 태그 추가-->
<form action="" id="serviceFrm" name="serviceFrm">
	<input type="hidden" id="familyNo" name="familyNo" value="${serviceDetail.familyNo }">
	<input type="hidden" id="serviceNo" name="serviceNo" value="${serviceDetail.serviceNo }">
	<button type="button" id="confirm" onclick="btnConfirm()">수락</button>
	<button type="button" id="rejct" onclick="btnReject()">거절</button>
</form>
</div>	

<script type="text/javascript">
function btnConfirm(){
	serviceFrm.action = 'confirm.do';
	serviceFrm.submit();
}
function btnReject(){
	serviceFrm.action = 'reject.do';
	serviceFrm.submit();
}
</script>
</body>
</html>