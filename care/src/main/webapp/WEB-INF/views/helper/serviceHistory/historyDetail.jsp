<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="${pageContext.request.contextPath}/resources/common/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/common/js/review.js"></script>
<link href="${pageContext.request.contextPath}/resources/common/css/review.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<!-- 글꼴  -->
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Chewy&family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>간병인 서비스 이력 상세 페이지</title>
<style>
.content{
  margin-top:20px;
}
.title{
  font-family: 'Do Hyeon', sans-serif;
  margin:35px;
  font-size: 38px;
  color: black;
  text-decoration: none;
}
.text,.review{
  margin-top:10px;
  font-family: 'Do Hyeon', sans-serif;
  font-size: 19px;
}
.form-group{
  font-family: 'Do Hyeon', sans-serif;
  font-size: 18px;
  text-align:center;
}
.btn{
  font-family: 'Jua', sans-serif;
  font-size: 18px;
  width:120px;
}
p {
  margin-bottom:0px;
}
</style>
</head>

<body>
<div class="content" align="center">
	<a class="title">환자 정보</a>
</div>	
<div class="w3-container">
  <div class="text" align="center">
	${historyDetail.patientName }님 /${historyDetail.patientBirth }세/${historyDetail.patientSex }<br>
	복용중인약:${historyDetail.patientMedication }<br>
	혈액형:${historyDetail.patientMedication }<br>
	질환:${historyDetail.patientDisease }<br> 
	치매등급:${historyDetail.patientGrade }<br> 
	주소:<br>${historyDetail.patientAddr }<br> 
	서비스날짜:${historyDetail.serviceDate }<br> 
	서비스시작시간:${historyDetail.serviceStartTime }시<br> 
	서비스종료시간:${historyDetail.serviceEndTime }시<br> 
	출근시간:${historyDetail.realStartTime }<br> 
	퇴근시간:${historyDetail.realEndTime }<br> 
	수령금액:${historyDetail.helperPrice }원<br> 
	요구사항:<br>${historyDetail.serviceDemand }<br>
  </div>
</div>
	
<!--  후기 및 평점 작성  -->
<img src="${pageContext.request.contextPath}/resources/img/noContents.png" style="height:25px"/>
<label class="review" for="exampleTextarea">후기 및 평점:</label>
<div class="form-group">
	<form action="insertHelperReview.do" id="reviewFrm" name="reviewFrm">
		<div>
			<c:choose>
				<%-- 후기가 없을 경우 --%>
				<c:when test="${empty reviewVo}">
					<div>
						<div class="starRev">
							<span class="starR1 on"></span>
							<span class="starR2"></span>
							<span class="starR1"></span>
							<span class="starR2"></span>
							<span class="starR1"></span>
							<span class="starR2"></span>
							<span class="starR1"></span>
							<span class="starR2"></span>
							<span class="starR1"></span>
							<span class="starR2"></span>
						</div>
						<textarea class="form-control" id="reviewContents" name="reviewContents" rows="5"></textarea>
						<input type="hidden" id="reviewStar" name="reviewStar" >
						<input type="hidden" id="serviceNo" name="serviceNo" value="${historyDetail.serviceNo }">
						<br><br>
						<button class="btn btn-secondary" type="button" onclick="sendReview()" >저장</button>
				    	<button class="btn btn-secondary" type="reset" onclick="location.href='helperMain.do'">취소</button>
					</div>
				</c:when>
				<%--후기가 있을 경우 --%>
				<c:otherwise>
						<div id="star">
							<c:forEach var="i" begin="1" end="${reviewVo.reviewStar}">
								<span class="review-star on"></span>
							</c:forEach>
						</div>
						<br>
					<div id="review-content">
						<div align="left">
							<p><br></p>
							<p>내용 : ${reviewVo.reviewContents}</p>
							<p>작성날짜 : <fmt:formatDate value="${reviewVo.reviewDate}" pattern="yyyy/MM/dd" /></p>
						</div><br>
						<div align="center">
				    		<button class="btn btn-secondary" type="button" onclick="updateFrmReview()" >후기수정</button>	
							<button class="btn btn-secondary" type="button" onclick="deleteReview()" >후기삭제</button>
						</div>
					</div>
					<%-- 후기 수정 폼 --%>
					<div id="updateFrm" style="display: none;">
						<textarea class="form-control" id="reviewContents" name="reviewContents" rows="5">${reviewVo.reviewContents}</textarea>
						<input type="hidden" id="reviewNo" name="reviewNo" value="${reviewVo.reviewNo }">
						<input type="hidden" id="reviewStar" name="reviewStar" >
						<input type="hidden" id="writerType" name="writerType" value="h">
						<input type="hidden" id="serviceNo" name="serviceNo" value="${reviewVo.serviceNo }">
						<br><br>
						<button class="btn btn-secondary" type="button" style="height:45px;" onclick="updateReview()" >수정저장</button>
				    	<button class="btn btn-secondary" type="reset" style="height:45px;" onclick="updateReviewReset()" >수정취소</button>
		    		</div>		
			    </c:otherwise>
			</c:choose>
		</div> 
	</form>
</div>	
<!--  후기 및 평점 작성 끝  -->	
	
	 
</body>
</html>