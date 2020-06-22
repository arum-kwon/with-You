<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">    
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>    

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=94bea10f3763df2dcedf149bfaa1440e"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.452344169439975, 126.56878163224233), // ������ �߽���ǥ
        level: 2 // ������ Ȯ�� ����
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ���� �����ϴ� ��ǥ �迭�Դϴ�. �� ��ǥ���� �̾ ���� ǥ���մϴ�
//
var linePath = [
    new kakao.maps.LatLng(33.452344169439975, 126.56878163224233),
    new kakao.maps.LatLng(33.452739313807456, 126.5709308145358),
    new kakao.maps.LatLng(33.45178067090639, 126.5726886938753) 
];

// ������ ǥ���� ���� �����մϴ�
var polyline = new kakao.maps.Polyline({
    path: linePath, // ���� �����ϴ� ��ǥ�迭 �Դϴ�
    strokeWeight: 2, // ���� �β� �Դϴ�
    strokeColor: '#FFAE00', // ���� �����Դϴ�
    strokeOpacity: 0.8, // ���� ������ �Դϴ� 1���� 0 ������ ���̸� 0�� �������� �����մϴ�
    strokeStyle: 'solid' // ���� ��Ÿ���Դϴ�
});

// ������ ���� ǥ���մϴ� 
//+1�Լ�
polyline.setMap(map);  
function addDays(date, days) {
    var result = new Date(date);
    result.setDate(result.getDate() + days);
    return result; 
}

</script>

</body>
</html>