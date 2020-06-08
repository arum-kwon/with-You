<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="member" items="${list}">
		ID : ${member.id } <br>
		NAME : ${member.name } <br>
		ADDR : ${member.addr } <br>
		TEL : ${member.tel } <br>
		GENDER : ${member.gender } <br>
		HOBBY : ${member.hobby } <br>
		<hr>
	</c:forEach>
	<a href="home.do">홈으로</a>
</body>
</html>