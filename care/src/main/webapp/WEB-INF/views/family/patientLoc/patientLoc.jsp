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
	src="http://maps.google.com/maps/api/js?key=AIzaSyBLxy_NDcgNNQZHn_kVUmVAjhNtpvOsldI"></script>
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
	<div id="map_ma"></div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var myLatlng = new google.maps.LatLng(35.870616,
									128.589454); // ��ġ�� ���� �浵
							var Y_point = 35.870616; // Y ��ǥ
							var X_point = 128.589454; // X ��ǥ
							var zoomLevel = 18; // ������ Ȯ�� ���� : ���ڰ� Ŭ���� Ȯ�������� ŭ
							//var markerTitle = "�뱸������"; // ���� ��ġ ��Ŀ�� ���콺�� �������� ��Ÿ���� ����
							var markerMaxWidth = 300; // ��Ŀ�� Ŭ�������� ��Ÿ���� ��ǳ���� �ִ� ũ��

							// ��ǳ�� ����
							var contentString = '<div>' + '<h2>�ȳ�</h2>'
									+ '<p>ȯ����ġ��</p>' +

									'</div>';
							var myLatlng = new google.maps.LatLng(Y_point,
									X_point);
							var mapOptions = {
								zoom : zoomLevel,
								center : myLatlng,
								mapTypeId : google.maps.MapTypeId.ROADMAP
							}
							var map = new google.maps.Map(document
									.getElementById('map_ma'), mapOptions);
							var marker = new google.maps.Marker({
								position : myLatlng,
								map : map,
								title : markerTitle
							});
							var infowindow = new google.maps.InfoWindow({
								content : contentString,
								maxWizzzdth : markerMaxWidth
							});
							google.maps.event.addListener(marker, 'click',
									function() {
										infowindow.open(map, marker);
									});
						});
	</script>
</body>
</html>
