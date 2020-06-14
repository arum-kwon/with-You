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
									128.589454); // 위치값 위도 경도
							var Y_point = 35.870616; // Y 좌표
							var X_point = 128.589454; // X 좌표
							var zoomLevel = 18; // 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
							//var markerTitle = "대구광역시"; // 현재 위치 마커에 마우스를 오버을때 나타나는 정보
							var markerMaxWidth = 300; // 마커를 클릭했을때 나타나는 말풍선의 최대 크기

							// 말풍선 내용
							var contentString = '<div>' + '<h2>안녕</h2>'
									+ '<p>환자위치임</p>' +

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
