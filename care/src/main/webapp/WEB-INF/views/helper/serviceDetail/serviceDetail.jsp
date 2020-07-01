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
    	<th colspan="4" id="head" style="border-right:hidden; border-left:hidden;">ȯ������</th>
    </tr>
      <tr>
       	<th style="width : 70px;">�̸�</th>
        <td style="width : 75px;">${serviceDetail.patientName }</td>
        <th>�������</th>
        <td><fmt:formatDate value="${serviceDetail.patientBirth}" pattern="YY.MM.DD" /></td>
        
      </tr>
    </thead>
    <tbody>
      <tr>
       	<th>����</th>
       	<td>${serviceDetail.patientSex }</td>
       	<th>��ȣ�� ����ó</th>
       	<td>${serviceDetail.patientFamilyTel }</td>
      </tr>
      <tr>
        <th>�ּ�</th>
        <td colspan="3">${serviceDetail.patientAddr }</td>
       		 
      </tr>
      <tr>
      	<th>��ȯ</th>
       	<td>${serviceDetail.patientDisease }</td>
       	<th>ġ�ŵ��</th>
       	<td>${serviceDetail.patientGrade }</td>
       </tr>
       <tr>
       	<th>������</th>
        <td>${serviceDetail.patientBlood }</td>
        <th>�������ξ�</th>
        <td>${serviceDetail.patientMedication }</td>
       </tr>
       <tr>
        <th><p style="margin-bottom : 2px;">Ư��</p>����</th>         
        <td colspan="3">${serviceDetail.patientUnique }</td>           
       </tr>    
       <tr>
       	<th colspan="4" id="head" style="border-right:hidden; border-left:hidden;">����������</th>
       </tr>
       <tr>
       		<th>�ٹ����۽ð�</th>
            <td>${serviceDetail.serviceStartTime }</td>
            <th>�ٹ�����ð�</th>
            <td>${serviceDetail.serviceEndTime }</td>
       </tr>
       <tr>
       		<th><p style="margin-bottom : 2px;">����</p>�ݾ�</th>
			<td colspan="3">${serviceDetail.servicePrice }</td>
       </tr>
       <tr>
       	    <th>������</th>
            <td colspan="3">${serviceDetail.commission }</td>
       </tr>
       <tr>
       		<th><p style="margin-bottom : 2px;">����</p>�ݾ�</th>            
            <td colspan="3">${serviceDetail.helperPrice }</td>
       </tr>
       <tr>
       	<th><p style="margin-bottom : 2px;">�䱸</p>����</th>
        <td colspan="3">${serviceDetail.serviceDemand }</td>
       </tr>
       <tr>
       		 <th colspan="4">�ı�</th>      		
       		  
       </tr>
          
      		<c:forEach var="rList" items="${reviewList}"> 
       <tr>
       		<td colspan="4">

       			���� : ${rList.reviewStar }<br>
       			�ۼ��� : <fmt:formatDate value="${rList.reviewDate}" pattern="yy.MM.dd HH:MM" /><br>
				���� :	${rList.reviewContents }
				
       		</td>
       		
       </tr>
       </c:forEach>
      
    </tbody>
  </table>
</div>	
<div>
<!-- ��Ʈ�ѷ��� ���� �����ϱ� ���� �±� �߰�-->
<form action="confirm.do" id="serviceFrm" name="serviceFrm">
	<input type="hidden" id="familyNo" name="familyNo" value="${serviceDetail.familyNo }">
	<input type="hidden" id="serviceNo" name="serviceNo" value="${serviceDetail.serviceNo }">
	<button type="button" id="confirm" class="confirm" onclick="getServiceNo('${serviceDetail.serviceNo }')">����</button>
	<button type="button" id="reject" onclick="getRejectNo('${serviceDetail.serviceNo}')">����</button>
	<input type="hidden" id="serviceNo" name="serviceNo">
</form>
</div>
<script type="text/javascript">
function getServiceNo(key){
	alert("��û�� �����߽��ϴ�.");
	document.serviceFrm.action="confirm.do";
	document.serviceFrm.submit();
}
function getRejectNo(key){
	alert("��û�� �����߽��ϴ�.")
	document.serviceFrm.action="reject.do";
	document.serviceFrm.submit();
}

</script>
</body>
</html>