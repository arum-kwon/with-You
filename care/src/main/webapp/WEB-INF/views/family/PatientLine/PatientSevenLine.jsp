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
    </form>
    &nbsp;&nbsp;
<button type="button" onclick="location.href='sevenLine.do'">1���� ����</button>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=94bea10f3763df2dcedf149bfaa1440e"></script>
<script>
var sevenLine = JSON.parse('${sevenLine}');
console.log("sevenLine:"+sevenLine)

var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = { 
        center: new kakao.maps.LatLng(sevenLine[0].patientLatitude, sevenLine[0].patientLongitude), // ������ �߽���ǥ
        level: 4 // ������ Ȯ�� ����
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�

// ���� �����ϴ� ��ǥ �迭�Դϴ�. �� ��ǥ���� �̾ ���� ǥ���մϴ�

var linePath = [];
	for(var i=0;i<sevenLine.length;i++){
		linePath.push(new kakao.maps.LatLng(sevenLine[i].patientLatitude, sevenLine[i].patientLongitude))
	}
  


// ������ ǥ���� ���� �����մϴ�
var polyline = new kakao.maps.Polyline({
    path: linePath, 
    strokeWeight: 2, // ���� �β� �Դϴ�
    strokeColor: '#0000FF', // ���� �����Դϴ�
    strokeOpacity: 0.8, // ���� ������ �Դϴ� 1���� 0 ������ ���̸� 0�� �������� �����մϴ�
    strokeStyle: 'solid' // ���� ��Ÿ���Դϴ�
});

// ������ ���� ǥ���մϴ� 
//+1�Լ�
polyline.setMap(map);  

</script>
</body>
</html>