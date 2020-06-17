<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보호자 메인홈메뉴</title>
</head>
<body>
    <c:if test="${loginOk != null }">
		<h2>${loginOk.familyName }님 어서오세요.</h2>
	</c:if>
   <input type="button" value="로그아웃" onclick="location.href='logout.do'" class="btn btn-primary btn-lg">  

</body>
</html>