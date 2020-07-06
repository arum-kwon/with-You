<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<!-- 글꼴 -->
<link href="https://fonts.googleapis.com/css2?family=Chewy&family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<head>
<style>
body {

  font-size: 17px;
  font-family: 'Do Hyeon', sans-serif;	

}
.contain{
  margin-top:20px;
}
</style>
</head>

<body>
<div class="contain">
<c:forEach items="${list }" var="alarm">
	<img src="${pageContext.request.contextPath}/resources/img/alert.png" style="height: 28px">
	${alarm.familyName } ${alarm.codeName }<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;날짜 : ${alarm.alarmTime }<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;읽음여부 :
	<c:choose>
		<c:when test="${alarm.alarmCheck == 'N'}">
			읽지 않음<br>
		</c:when>
		<c:otherwise>
			읽음<br>
		</c:otherwise>
	</c:choose>
	<br><hr>
</c:forEach>
</div>
</body>
</html>