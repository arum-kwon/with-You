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
    	<th colspan="4">ȯ������</th>
    </tr>
      <tr>
       	<th>�̸�</th>
        <td>${serviceDetail.patientName }</td>
        <th>�������</th>
        <td>${serviceDetail.patientBirth }</td>
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
        <th colspan="2">Ư�̻���</th>         
        <td colspan="2">${serviceDetail.patientUnique }</td>           
       </tr>    
       <tr>
       	<th colspan="4">������</th>
       </tr>
       <tr>
       		<th>�ٹ����۽ð�</th>
            <td>${serviceDetail.serviceStartTime }</td>
            <th>�ٹ�����ð�</th>
            <td>${serviceDetail.serviceEndTime }</td>
       </tr>
       <tr>
       		<th>�����ݾ�</th>
			<td colspan="3">${serviceDetail.servicePrice }</td>
       </tr>
       <tr>
       	    <th>������</th>
            <td colspan="3">${serviceDetail.commission }</td>
       </tr>
       <tr>
       		<th>���ɱݾ�</th>            
            <td colspan="3">${serviceDetail.helperPrice }</td>
       </tr>
       <tr>
       	<th >�䱸����</th>
        <td colspan="3">${serviceDetail.serviceDemand }</td>
       </tr>
       <tr>
       		 <th colspan="4">�ı�</th>      		 
       </tr>
       <tr>
       		<td colspan="4"><textarea></textarea></td>            
       </tr>
    </tbody>
  </table>
</div>	
<div>
	<button type="button" id="confirm" onclick="location.href='confirm.do'">����</button>
	<button type="button" id="rejct" onclick="location.href='reject.do'">����</button>
</div>	
</body>
</html>