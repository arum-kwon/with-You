<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>동선추적 샘플</title>
</head>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1180e2d9999814c4d0d9e8ab3b7abf23"></script>
	
<body>
	<div id="map" style="width: 100%; height: 350px;"></div>
	
</body>
<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.4526437, 126.49236), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 선을 구성하는 좌표 배열입니다. 이 좌표들을 이어서 선을 표시합니다
		var linePath = [
				new kakao.maps.LatLng(37.4526437, 126.49236),
				new kakao.maps.LatLng(37.4988237, 126.4960839),
				new kakao.maps.LatLng(37.5176422, 126.5392841),
				new kakao.maps.LatLng(37.5398154, 126.5708743)];

		// 지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
			path : linePath, // 선을 구성하는 좌표배열 입니다
			strokeWeight : 5, // 선의 두께 입니다
			strokeColor : '#FF0000', // 선의 색깔입니다
			strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle : 'solid' // 선의 스타일입니다
		});

		// 지도에 선을 표시합니다 
		polyline.setMap(map);
	</script>

</html>