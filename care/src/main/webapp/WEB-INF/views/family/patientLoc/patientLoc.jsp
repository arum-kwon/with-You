<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1180e2d9999814c4d0d9e8ab3b7abf23"></script>
<style>
#map_ma {
	width: 100%;
	height: 400px;
	clear: both;
	border: solid 1px red;
}
</style>
</head>
<body>
	<div id="map" style="width: 100%; height: 350px;"></div>
	<script>
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		mapOption = {
			center : new kakao.maps.LatLng(38.450701, 128.570667), // ������ �߽���ǥ
			level : 3
		// ������ Ȯ�� ���� 
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
		var lat = '35.870616', // ����
		lon = '128.589454'; // �浵

		var locPosition = new kakao.maps.LatLng(lat, lon), // ��Ŀ�� ǥ�õ� ��ġ�� geolocation���� ���� ��ǥ�� �����մϴ�
		message = '<div style="padding:5px;">���⿡ ��Ű���?!</div>'; // ���������쿡 ǥ�õ� �����Դϴ�

		// ��Ŀ�� ���������츦 ǥ���մϴ�
		displayMarker(locPosition, message);

		// ������ ��Ŀ�� ���������츦 ǥ���ϴ� �Լ��Դϴ�
		function displayMarker(locPosition, message) {

			// ��Ŀ�� �����մϴ�
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition
			});

			var iwContent = message, // ���������쿡 ǥ���� ����
			iwRemoveable = true;

			// ���������츦 �����մϴ�
			var infowindow = new kakao.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});

			// ���������츦 ��Ŀ���� ǥ���մϴ� 
			infowindow.open(map, marker);

			// ���� �߽���ǥ�� ������ġ�� �����մϴ�
			map.setCenter(locPosition);
		}
	</script>
</body>
</html>
