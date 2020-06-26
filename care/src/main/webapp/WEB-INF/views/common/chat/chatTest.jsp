<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
채팅
	<div class="container">
		<form id="msgFrm" name="msgFrm" action="chatInsert.do" method="post">
			<div class="container p-3 my-3 bg-dark text-white">
				<div align="right">
					<c:forEach var="list" items="${chatList }">
						${list.familyName } : <br/>
						(${list.chatDate }) ${list.chatContents }<br/>
					</c:forEach>
				</div>
			</div>
			<div class="container mt-3">
				<div class="input-group mb-3">
				    <input type="text" id="chatContents" name="chatContents" class="form-control" placeholder="메시지를 입력하세요">
				    <div class="input-group-append">
				      <button type="submit" class="btn btn-primary" type="button">전송</button>  
				      <button type="reset" class="btn btn-danger" type="button">취소</button>  
			     	</div>
			  	</div>
			</div>
			<input type="hidden" id="helperNo" name="helperNo" value="${chatVo.helperNo }">
			<input type="hidden" id="familyNo" name="familyNo" value="${chatVo.familyNo }">
		</form>	
	</div>
</body>
</html>