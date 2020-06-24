<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
  <h2>즐겨찾기 리스트</h2>
  <div><br/></div>
  <table class="table">
    <thead align="center">
      <tr>
        <th></th>
        <th>프로필 사진</th>
        <th>간병인 성명</th>
        <th>성별</th>
      </tr>
    </thead>
    <c:forEach var="list" items="${bestLikeList }">
    <tbody align="center">
      <tr id="listTr" onclick="selectOne('${list.helperNo }')" 
		onMouseOver="this.style.cursor='pointer';" onMouseOut="this.style.cursor='';">
        <td>
			<c:choose>
				<c:when test="${not empty list.familyNo}"> 
			  		<img src="${pageContext.request.contextPath}/resources/img/bestLike/bestLike2.png" style="height:30px"  />
				</c:when>
			</c:choose> 
        </td>
        <td><img src="uploadProfile/${list.helperProfile }" onerror='this.src="resources/img/no_image.png"' id="viewProfile" class="" width="50" height="50"></td>
        <td>${list.helperName }</td>
        <td>${list.helperSex }</td>
      </tr>
    </tbody>
    </c:forEach>
  </table>
</div>



<!-- 목록 클릭시 상세 페이지 이동  -->
<div>
	<form id="frm" name="frm" action="bestLikeDetail.do" metho="post">
		<input type="hidden" id="helperNo" name="helperNo">
	</form>
</div>
<script type="text/javascript">
		//조회된 간병인 목록 클릭시 간병인 상세정보 페이지 이동 함수
		function selectOne(key) {
			document.frm.helperNo.value=key;
			document.frm.submit(); 
		}
</script>
<!-- 목록 클릭시 상세 페이지 이동  끝 -->
	
	
</body>
</html>