<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보호자 메인홈메뉴</title>
<style>
.menu {
	margin:50px;
}
</style>
</head>
<body>
   <input type="button" value="로그아웃" onclick="location.href='logout.do'" class="btn btn-primary btn-lg">  
    <c:if test="${loginOk != null }">
		<h2>${loginOk.familyName }님 어서오세요.</h2>
	</c:if>
	<br>
	<div class="menu" align="center">
		<div>
		   	<a href="#contact">
		  	<img src="${pageContext.request.contextPath}/resources/img/menu/addHelper.png" style="height:80px"  />
		  	</a>
		</div><br>
		<div style="margin:20px;">
		  	<a>
		  	<img src="${pageContext.request.contextPath}/resources/img/menu/hospital.png" style="height:80px"  />
		  	</a>
		</div>
  	
	</div>

</body>
</html>