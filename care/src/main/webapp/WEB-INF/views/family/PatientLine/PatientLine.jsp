<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">    
</head>
<body>

<div id="map" style="width:100%;height:350px;"></div>    
 <form name="insertDate" action="patientGetLine.do" method="post">
        <input type="date" id='Loctime' name='Loctime'/>
        <input type="submit" value="�˻�">
    </form>=======================================================${GpsLine}
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=94bea10f3763df2dcedf149bfaa1440e"></script>
<script>

var GpsLine= JSON.parse('${GpsLine}');
console.log(GpsLine[0].patientLongitude);

//var TodayLong = new Array();
//<c:forEach items="${todayLine}" var="today">
//	TodayLong.push(${today.patientLongitude})
//</c:forEach>
//console.log(TodayLat[0]);


var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(GpsLine[0].patientLatitude, GpsLine[0].patientLongitude), // ������ �߽���ǥ
        level: 4 // ������ Ȯ�� ����
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ���� �����ϴ� ��ǥ �迭�Դϴ�. �� ��ǥ���� �̾ ���� ǥ���մϴ�
for(i=0;i<GpsLine.length;i++){	
var linePath = [
	
   new kakao.maps.LatLng(GpsLine[i].patientLatitude, GpsLine[i].patientLongitude),
	
  
];
}
// ������ ǥ���� ���� �����մϴ�--%>
var polyline = new kakao.maps.Polyline({
    path: linePath, // ���� �����ϴ� ��ǥ�迭 �Դϴ�
    strokeWeight: 2, // ���� �β� �Դϴ�
    strokeColor: '#FFAE00', // ���� �����Դϴ�
    strokeOpacity: 0.8, // ���� �������� �Դϴ� 1���� 0 ������ ���̸� 0�� �������� �����մϴ�
    strokeStyle: 'solid' // ���� ��Ÿ���Դϴ�
});

// ������ ���� ǥ���մϴ� 
//+1�Լ�
polyline.setMap(map);  

</script>
</body>
</html>