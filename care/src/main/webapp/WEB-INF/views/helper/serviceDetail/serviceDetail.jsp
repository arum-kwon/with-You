<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${serviceDetail.patientName}
	${serviceDetail.serviceNo}
	<button type="button" onclick="location.href='confirm.do'">수락</button>
	<button type="button" onclick="location.href='reject.do'">거절</button>
</body>
</html>