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
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- �۲� ��Ÿ��  -->
<link href="https://fonts.googleapis.com/css2?family=Chewy&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Chewy&family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
</head>

<style>	
.content{
  margin-top:20px;
}
.review{
  font-size: 18px;
}
.title{
  font-family: 'Do Hyeon', sans-serif;
  margin:35px;
  font-size: 33px;
  color: black;
  text-decoration: none;
}
.text,.text2 {
  font-family: 'Do Hyeon', sans-serif;
  font-size: 17px;
}
.w3-button{
  font-family: 'Jua', sans-serif;
  font-size: 19px;
}
</style>


<body>
<div align="center">
	<div class="content">
		<a class="title">ȯ������</a><br>
	</div>
	<div class="text">
		�̸� : ${serviceDetail.patientName }��<br>
		${serviceDetail.patientBirth}��/${serviceDetail.patientSex }/${serviceDetail.patientBlood }��<br>
	         ��ȣ�� ����ó :${serviceDetail.patientFamilyTel }<br>
	         �ּ� :<br>${serviceDetail.patientAddr }<br>
	         ��ȯ : ${serviceDetail.patientDisease }<br>
		ġ�ŵ�� : ${serviceDetail.patientGrade }<br>
		�������ξ� :${serviceDetail.patientMedication }<br>
		Ư�̻��� :${serviceDetail.patientUnique }
	</div>
	<br>
	<div class="content">
		<a class="title">��������</a><br>
	</div>
	<div class="text2">
	�ٹ��ð�:${serviceDetail.serviceStartTime }�� ~ ${serviceDetail.serviceEndTime }�� <br>
	�����ݾ�:${serviceDetail.servicePrice }��<br>
	������ :${serviceDetail.commission }��<br>
        ���ɱݾ�:${serviceDetail.helperPrice }��<br>
         �䱸����:${serviceDetail.serviceDemand } <br><br>
    <div class="review">
    <img src="${pageContext.request.contextPath}/resources/img/noContents.png" style="height:30px"/>${serviceDetail.patientName }�� �ı�<br>
    </div>
	<hr style="border: 1px solid #bcabae" width="100%">
	 <c:forEach var="rList" items="${reviewList}"> 
	�ۼ��� : 
	<fmt:formatDate value="${rList.reviewDate}" pattern="yy.MM.dd HH:MM" /><br>
	���� : ${rList.reviewStar }<br>
	���� :${rList.reviewContents }<br>
	<hr style="border: 1px solid #bcabae" width="100%">
     </c:forEach>
	</div>
</div>

	<!-- ��Ʈ�ѷ��� ���� �����ϱ� ���� �±� �߰�-->
<div align="center">
<form action="confirm.do" id="serviceFrm" name="serviceFrm">
	<input type="hidden" id="familyNo" name="familyNo" value="${serviceDetail.familyNo }">
	<input type="hidden" id="serviceNo" name="serviceNo" value="${serviceDetail.serviceNo }">
	<button type="button" id="confirm" class="confirm w3-button w3-dark-grey" onclick="getServiceNo('${serviceDetail.serviceNo }')">����</button>
	<button type="button" class="w3-button w3-dark-grey" id="reject" onclick="getRejectNo('${serviceDetail.serviceNo}')">����</button>
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