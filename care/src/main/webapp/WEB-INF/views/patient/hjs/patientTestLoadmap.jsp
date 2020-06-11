<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<title>환자 집으로가기 화면</title>

<style type="text/css"> 
#urgent { font-family:sans-serif;
		  font-size:x-large;
		  font-style: italic;
		  color:#1E90FF;
}
</style>
</head>

<body>
<div id="map" style="width:100%;height:350px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d32000692658cb31291420c5c084e6d"></script>
<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
    
            
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
        message = '실시간위치를 받아 올 수 없습니다.'
        
    displayMarker(locPosition, message);
}

//지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);   
    console.log(locPosition);
}    
	
//전화걸기
function callNumber(num){
    location.href = "tel:" + num;
}

</script>



<div align="center">
<div align="center" style="margin:40px;">
	<a style="color:black" href="https://map.kakao.com/link/to/카카오판교오피스,37.402056,127.108212">
	<i class="fas fa-home fa-4x"></i>
	</a>
<h2>집으로</h2>
</div>
<div style="display: inline-block; margin:30px;" >
<a style="color:black" href="tel:010-4691-7957">
	<i class="fas fa-user-alt fa-4x"></i>
</a>
</div>
<div style="display: inline-block; margin:30px;">
<a id="urgent" href="tel:112">	
	<h1>112</h1>
</a>
</div>

<!-- 자바스크립트 이용시  -->
<div onclick="callNumber('${call.familyTel }')">  <!--{shopAbout.shop_tel } : 보호자번호가 들어가야함  -->
	<i class="fas fa-user-alt fa-4x"></i>
</div> 
<c:forEach var="call" items="${callList}">
<i class="fas fa-user-alt fa-4x" onclick="callNumber('${call.familyTel }')"></i>  
</c:forEach>

</div>
</body>
</html>