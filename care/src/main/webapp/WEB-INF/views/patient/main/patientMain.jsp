<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>환자 메인홈메뉴</title>

<script type="text/javascript">
	window.MyApp.jsToAppStartService(${loginOk.patientNo});
</script>

<style>
.menu {
	margin:50px;
}
.fam1,.fam2 {
	margin:45px;
	display:inline-block;

}
</style>
</head>
<body>
	<div class="menu" align="center">
		<div class="fam1">
		   	<a href="findload.do">
		  	<img src="${pageContext.request.contextPath}/resources/img/menu/home.png" style="height:90px"  />
		  	</a>
		  		<h3>집으로</h3>
		</div>
		  <div class="fam2">
		  	<a href="#">
		  		<img src="${pageContext.request.contextPath}/resources/img/menu/voiceList.png" style="height:100px"  />
		  	</a>
		  		<h3>녹음 리스트</h3>
		  </div>
		<br>
	
	</div>

</body>
</html>