<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="list" items="${selectList }">
	${list.HOSPITALNAME }
	${list.HOSPITALADDR }
	${list.HOSPITALTEL }
	${list.HOSPITALSICKBAD }
	${list.HOSPITALLRM }
	${list.HOSPITALMEDSTAF }
	${list.HOSPITALLOGT }
	${list.HOSPITALLAT }
	<br><br>
	</c:forEach>
==============================================
</body>
</html>