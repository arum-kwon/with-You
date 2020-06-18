<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h1>간병인 정보</h1>
	<div>
		이름: ${helperInfo.helperName }<br />
		성별: ${helperInfo.helperSex }<br />
		이메일: ${helperInfo.helperEmail }<br />
		희망근무지역: ${helperInfo.helperWorkArea }<br />
		돌봄가능시간: ${helperInfo.helperStartTime }시~${helperInfo.helperEndTime }시<br />
		요구사항: ${helperInfo.helperUnique }<br />
		프로필사진: ${helperInfo.helperProfile }<br />
		자격증명: ${helperInfo.certifiNo }<br />
	</div>
	<div><br />
		<input type="button" name="main" value="메인화면" onclick="location.href='home.do'">
		<input type="button" name="helperList" value="조회목록" onclick="location.href='helperList.do'">
	</div>
	<div><br /></div>
	<h1>서비스 신청하기</h1>
		<div>
			서비스 요청시간 : ${searchFilterVo.helperStartTime }~${searchFilterVo.helperEndTime } <br />
			서비스 지역 : ${searchFilterVo.helperWorkArea }<br />
			보호자 요청사항: <br />
			<textarea id="hopeMsg" name="hopeMsg"></textarea><br />
		</div>
		<div><br /></div>
		<input type="button" name="callService" value="신청하기" onclick="location.href='getService.do'">
</div>
</body>
</html>