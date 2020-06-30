<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>서비스 신청 페이지</title>
</head>
<style>
 select { 
	/* 네이티브 외형 감추기 */ 
	-webkit-appearance: none; 
	-moz-appearance: none; 
	appearance: none; 
	background-color: white;
	/* 화살표 모양의 이미지 */ 
	background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; 
}
select::-ms-expand { 
/* IE 10, 11의 네이티브 화살표 숨기기 */ 
	display: none; 
}
select { 
	width: 200px; /* 원하는 너비설정 */ 
	padding: .8em .5em; /* 여백으로 높이 설정 */ 
	font-family: inherit; /* 폰트 상속 */ 
	background-color: white;
	background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */
    border: 2px solid white; 
    border-radius: 10px; 
    -webkit-appearance: none; /* 네이티브 외형 감추기 */ 
    -moz-appearance: none; appearance: none; 
}

.main {
 	margin:30px;
}

</style>

<script type="text/javascript">

	function categoryChange(e) {
		
		var seoul = ["강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", 
					"마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구"];
		var busan = ["강서구", "금정구", "기장군", "남구", "동구",	"동래구",	"부산진구", "북구",	"사상구",	"사하구",	"서구", "수영구", "연제구",
					"영도구",	"중구", "해운대구"];
		var daegu = ["남구",	"달서구",	"달성군",	"동구", "북구", "서구",	"수성구",	"중구"];
		var incheon = ["강화군",	"계양구",	"남동구",	"동구", "미추홀구",	"부평구",	"서구", "연수구", "옹진군", "중구"];
		var gwangju = ["광산구", "남구", "동구", "북구", "서구"];
		var daejeon = ["대덕구", "동구", "서구", "유성구", "중구"];
		var ulsan = ["남구", "동구", "북구", "울주군", "중구"];
		var sejong = ["세종"];
		var kyunggi = ["가평군", "고양시",	"고양시 덕양구",	 "고양시 일산구", "고양시 일산동구",	"고양시 일산서구", "과천시", "광명시", "광주시", "구리시",
						"군포시",	"김포시",	"남양주시", "동두천시",	"부천시",	"성남시",	"성남시 분당구", "성남시 수정구", "성남시 중원구", "수원시", 
						"수원시 권선구", "수원시 영통구", "수원시 장안구", "수원시 팔달구", "시흥시", "안산시", "안산시 단원구", "안산시 상록구",	"안성시",
						"안양시",	"안양시 동안구", "안양시 만안구", "양주시", "양평군", "여주시", "연천군", "오산시", "용인시", "용인시 기흥구", "용인시 수지구",
						"용인시 처인구", "의왕시", "의정부시", "이천시", "파주시", "평택시", "포천군", "포천시", "하남시", "화성시"];
		var kangwon = ["강릉시", "고성군", "동해시", "삼척시", "속초시", "양구군", "양양군",	"영월군",	"원주시",	"인제군",	"정선군",	"철원군",
						"춘천시",	"태백시",	"평창군",	"홍천군",	"화천군",	"횡성군"];
		var choongbook = ["괴산군", "단양군", "보은군", "영동군", "옥천군", "음성군", "제천시", "증평군", "진천군", "청원군", "청주시", "청주시 상당구",
						"청주시 서원구", "청주시 청원구", "청주시 흥덕구", "충주시"];
		var choongnam = ["계룡시", "공주시", "금산군", "논산시", "당진시", "보령시", "부여군", "서산시", "서천군", "아산시", "연기군", "예산군", "천안시",
						"천안시 동남구", "천안시 서북구", "청양군", "태안군", "홍성군"];
		var jeonbook = ["고창군", "군산시", "김제시", "남원시", "무주군", "부안군", "순창군", "완주군", "익산시", "임실군", "장수군", "전주시", 
						"전주시 덕진구", "전주시 완산구", "정읍시", "진안군"];
		var jeonnam = ["강진군", "고흥군", "곡성군", "광양시", "구례군", "나주시", "담양군", "목포시", "무안군", "보성군", "순천시", "신안군", 
						"여수시", "영광군", "영암군", "완도군", "장성군", "장흥군", "진도군", "함평군", "해남군", "화순군"];
		var kyungbook = ["경산시", "경주시", "고령군", "구미시", "군위군", "김천시", "문경시", "봉화군", "상주시", "성주군", "안동시", "영덕군", "영양군",
						"영주시", "영천시", "예천군", "울릉군", "울진군", "의성군", "청도군", "청송군", "칠곡군", "포항시", "포항시 남구", "포항시 북구"];
		var kyungnam = ["거제시", "거창군", "고성군", "김해시", "남해군", "밀양시", "사천시", "산청군", "양산시", "의령군", "진주시", "창녕군", "창원시", 
						"창원시 마산합포구", "창원시 마산회원구", "창원시 성산구", "창원시 의창구", "창원시 진해구", "통영시", "하동군", "함안군", "함양군", "합천군"];
		var jeju = ["서귀포시", "제주시"];

		var target = document.getElementById("helperWorkArea2");

		if (e.value == "서울") var temp = seoul;
		else if (e.value == "부산") var temp = busan;
		else if (e.value == "대구") var temp = daegu;
		else if (e.value == "인천") var temp = incheon;
		else if (e.value == "광주") var temp = gwangju;
		else if (e.value == "대전") var temp = daejeon;
		else if (e.value == "울산") var temp = ulsan;
		else if (e.value == "세종") var temp = sejong;
		else if (e.value == "경기") var temp = kyunggi;
		else if (e.value == "강원") var temp = kangwon;
		else if (e.value == "충북") var temp = choongbook;
		else if (e.value == "충남") var temp = choongnam;
		else if (e.value == "전북") var temp = jeonbook;
		else if (e.value == "전남") var temp = jeonnam;
		else if (e.value == "경북") var temp = kyungbook;
		else if (e.value == "경남") var temp = kyungnam;
		else if (e.value == "제주") var temp = jeju;

		target.options.length = 0;

		for (x in temp) {
			var opt = document.createElement("option");
			opt.value = temp[x];
			opt.innerHTML = temp[x];
			target.appendChild(opt);
		}
	}
</script>

<body>

<div class="main" align="center">
	<form id="frm" name="frm" action="helperList.do" method="post">
		<label for="helperWorkArea1">근무지역</label>
			<select name="helperWorkArea1" id="helperWorkArea1" onchange="categoryChange(this)">
				<option value="" selected="selected">시도</option>
				<option value="서울" ${param.helperWorkArea1 eq "서울" ? "selected" :""}>서울</option>
				<option value="부산" ${param.helperWorkArea1 eq "부산" ? "selected" :""}>부산</option>
				<option value="대구" ${param.helperWorkArea1 eq "대구" ? "selected" :""}>대구</option>
				<option value="인천" ${param.helperWorkArea1 eq "인천" ? "selected" :""}>인천</option>
				<option value="광주" ${param.helperWorkArea1 eq "광주" ? "selected" :""}>광주</option>
				<option value="대전" ${param.helperWorkArea1 eq "대전" ? "selected" :""}>대전</option>
				<option value="울산" ${param.helperWorkArea1 eq "울산" ? "selected" :""}>울산</option>
				<option value="세종" ${param.helperWorkArea1 eq "세종" ? "selected" :""}>세종</option>
				<option value="경기" ${param.helperWorkArea1 eq "경기" ? "selected" :""}>경기</option>
				<option value="강원" ${param.helperWorkArea1 eq "강원" ? "selected" :""}>강원</option>
				<option value="충북" ${param.helperWorkArea1 eq "충북" ? "selected" :""}>충북</option>
				<option value="충남" ${param.helperWorkArea1 eq "충남" ? "selected" :""}>충남</option>
				<option value="전북" ${param.helperWorkArea1 eq "전북" ? "selected" :""}>전북</option>
				<option value="전남" ${param.helperWorkArea1 eq "전남" ? "selected" :""}>전남</option>
				<option value="경북" ${param.helperWorkArea1 eq "경북" ? "selected" :""}>경북</option>
				<option value="경남" ${param.helperWorkArea1 eq "경남" ? "selected" :""}>경남</option>
				<option value="제주" ${param.helperWorkArea1 eq "제주" ? "selected" :""}>제주</option>
			</select> 
			
		<label for="helperWorkArea2">근무지역</label>
			<select name="helperWorkArea2" id="helperWorkArea2">
				<option value="" selected="selected">시군구</option>
			</select>
			
		<label for="helperStartTime">돌봄시작시간</label>
			<select name="helperStartTime" id="helperStartTime">
				<option value="" selected="selected">선택</option>
				<option value="0" ${param.helperStartTime eq "0" ? "selected" :""}>00</option>
				<option value="1" ${param.helperStartTime eq "1" ? "selected" :""}>01</option>
				<option value="2" ${param.helperStartTime eq "2" ? "selected" :""}>02</option>
				<option value="3" ${param.helperStartTime eq "3" ? "selected" :""}>03</option>
				<option value="4" ${param.helperStartTime eq "4" ? "selected" :""}>04</option>
				<option value="5" ${param.helperStartTime eq "5" ? "selected" :""}>05</option>
				<option value="6" ${param.helperStartTime eq "6" ? "selected" :""}>06</option>
				<option value="7" ${param.helperStartTime eq "7" ? "selected" :""}>07</option>
				<option value="8" ${param.helperStartTime eq "8" ? "selected" :""}>08</option>
				<option value="9" ${param.helperStartTime eq "9" ? "selected" :""}>09</option>
				<option value="10" ${param.helperStartTime eq "10" ? "selected" :""}>10</option>
				<option value="11" ${param.helperStartTime eq "11" ? "selected" :""}>11</option>
				<option value="12" ${param.helperStartTime eq "12" ? "selected" :""}>12</option>
				<option value="13" ${param.helperStartTime eq "13" ? "selected" :""}>13</option>
				<option value="14" ${param.helperStartTime eq "14" ? "selected" :""}>14</option>
				<option value="15" ${param.helperStartTime eq "15" ? "selected" :""}>15</option>
				<option value="16" ${param.helperStartTime eq "16" ? "selected" :""}>16</option>
				<option value="17" ${param.helperStartTime eq "17" ? "selected" :""}>17</option>
				<option value="18" ${param.helperStartTime eq "18" ? "selected" :""}>18</option>
				<option value="19" ${param.helperStartTime eq "19" ? "selected" :""}>19</option>
				<option value="20" ${param.helperStartTime eq "20" ? "selected" :""}>20</option>
				<option value="21" ${param.helperStartTime eq "21" ? "selected" :""}>21</option>
				<option value="22" ${param.helperStartTime eq "22" ? "selected" :""}>22</option>
				<option value="23" ${param.helperStartTime eq "23" ? "selected" :""}>23</option>
				<option value="24" ${param.helperStartTime eq "24" ? "selected" :""}>24</option>
			</select>	
		
		<label for="helperEndTime">돌봄종료시간</label>
			<select name="helperEndTime" id="helperEndTime">
				<option value="" selected="selected">선택</option>
				<option value="0" ${param.helperEndTime eq "0" ? "selected" :""}>00</option>
				<option value="1" ${param.helperEndTime eq "1" ? "selected" :""}>01</option>
				<option value="2" ${param.helperEndTime eq "2" ? "selected" :""}>02</option>
				<option value="3" ${param.helperEndTime eq "3" ? "selected" :""}>03</option>
				<option value="4" ${param.helperEndTime eq "4" ? "selected" :""}>04</option>
				<option value="5" ${param.helperEndTime eq "5" ? "selected" :""}>05</option>
				<option value="6" ${param.helperEndTime eq "6" ? "selected" :""}>06</option>
				<option value="7" ${param.helperEndTime eq "7" ? "selected" :""}>07</option>
				<option value="8" ${param.helperEndTime eq "8" ? "selected" :""}>08</option>
				<option value="9" ${param.helperEndTime eq "9" ? "selected" :""}>09</option>
				<option value="10" ${param.helperEndTime eq "10" ? "selected" :""}>10</option>
				<option value="11" ${param.helperEndTime eq "11" ? "selected" :""}>11</option>
				<option value="12" ${param.helperEndTime eq "12" ? "selected" :""}>12</option>
				<option value="13" ${param.helperEndTime eq "13" ? "selected" :""}>13</option>
				<option value="14" ${param.helperEndTime eq "14" ? "selected" :""}>14</option>
				<option value="15" ${param.helperEndTime eq "15" ? "selected" :""}>15</option>
				<option value="16" ${param.helperEndTime eq "16" ? "selected" :""}>16</option>
				<option value="17" ${param.helperEndTime eq "17" ? "selected" :""}>17</option>
				<option value="18" ${param.helperEndTime eq "18" ? "selected" :""}>18</option>
				<option value="19" ${param.helperEndTime eq "19" ? "selected" :""}>19</option>
				<option value="20" ${param.helperEndTime eq "20" ? "selected" :""}>20</option>
				<option value="21" ${param.helperEndTime eq "21" ? "selected" :""}>21</option>
				<option value="22" ${param.helperEndTime eq "22" ? "selected" :""}>22</option>
				<option value="23" ${param.helperEndTime eq "23" ? "selected" :""}>23</option>
				<option value="24" ${param.helperEndTime eq "24" ? "selected" :""}>24</option>
			</select>
			
		<label for="certifiName">자격증보유</label>
			<select name="certifiName" id="certifiName" >
				<option value="" selected="selected">선택</option>
				<option value="y" ${param.certifiName eq "y" ? "selected" :"" }>보유</option>
				<option value="n" ${param.certifiName eq "n" ? "selected" :"" }>미보유</option>				
			</select>
			
			<input type="hidden" id="helperNo" name="helperNo" >			
			&nbsp;&nbsp;&nbsp;

		<button type="button" onclick="formCheck()" class="btn btn-secondary btn-lg" id="sbmt" name="sbmt">검색</button>

	</form>
</div>
<div><br/></div>
<div align="center">
	<table class="table table-hover">
		<tr class="table-light">
			<th>프로필</th>
			<th>이름</th>
			<th>근무지역</th>
			<th>돌봄시작시간</th>
			<th>돌봄종료시간</th>
		</tr>
		<c:forEach var="list" items="${searchList }">
		<tr id="listTr" onclick="selectOne('${list.helperNo }')">
			<td scope="row"><img src="uploadProfile/${list.helperProfile }" onerror='this.src="resources/img/no_image.png"' id="viewProfile" class="" width="50" height="50"></td>
			<td scope="row">${list.helperName }</td>
			<td scope="row">${list.helperWorkArea }</td>
			<td scope="row">${list.helperStartTime }</td>
			<td scope="row">${list.helperEndTime }</td>		
		</tr>
		</c:forEach>
	</table>
	<div><br />
		<input type="button" name="main" value="보호자메인" onclick="location.href='familyMain.do'">
	</div>
	
</div>
	

	<script type="text/javascript">
		//조회된 간병인 목록 클릭시 간병인 상세정보 페이지 이동 함수
		function selectOne(key) {
			document.frm.action="helperInfo.do";	//frm 에서 저장한 조건value 가지고 간다
			document.frm.helperNo.value=key;
			
			document.frm.submit(); 
		}
		
		//필수 조건 선택여부 체크 함수
		function formCheck() {
			if(document.frm.helperWorkArea1.value == '') {
				alert('돌봄서비스 지역(시,도)을 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.helperWorkArea1.focus();
			} 
			else if(document.frm.helperWorkArea2.value == '') {
				alert('돌봄서비스 지역(시,군,구)을 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.helperWorkArea2.focus();
			}
			else if(document.frm.helperStartTime.value == '') {
				alert('돌봄서비스 시작시간을 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.helperStartTime.focus();
			}
			else if(document.frm.helperEndTime.value == '') {
				alert('돌봄서비스 종료시간을 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.helperEndTime.focus();
			}
			else if(document.frm.certifiName.value == '') {
				alert('간병인 자격유무를 선택해주세요'+'\n'+' * 필수 조건은 서비스 신청시 적용됩니다.');
				document.frm.certifiName.focus();
			}
			else {
				document.frm.submit();
			}
		}
	</script>

</body>
</html>