<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�������� ����</title>
</head>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1180e2d9999814c4d0d9e8ab3b7abf23"></script>
	
<body>
	<div id="map" style="width: 100%; height: 350px;"></div>
	
</body>
<script>
		var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		mapOption = {
			center : new kakao.maps.LatLng(37.4526437, 126.49236), // ������ �߽���ǥ
			level : 3
		// ������ Ȯ�� ����
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

		// ���� �����ϴ� ��ǥ �迭�Դϴ�. �� ��ǥ���� �̾ ���� ǥ���մϴ�
		var linePath = [
				new kakao.maps.LatLng(37.4526437, 126.49236),
				new kakao.maps.LatLng(37.4988237, 126.4960839),
				new kakao.maps.LatLng(37.5176422, 126.5392841),
				new kakao.maps.LatLng(37.5398154, 126.5708743)];

		// ������ ǥ���� ���� �����մϴ�
		var polyline = new kakao.maps.Polyline({
			path : linePath, // ���� �����ϴ� ��ǥ�迭 �Դϴ�
			strokeWeight : 5, // ���� �β� �Դϴ�
			strokeColor : '#FF0000', // ���� �����Դϴ�
			strokeOpacity : 0.7, // ���� ������ �Դϴ� 1���� 0 ������ ���̸� 0�� �������� �����մϴ�
			strokeStyle : 'solid' // ���� ��Ÿ���Դϴ�
		});

		// ������ ���� ǥ���մϴ� 
		polyline.setMap(map);
	</script>

</html>