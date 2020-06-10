<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

</script>

</head>
<body>
<div>
	<h1> 실시간 위치정보 </h1>
	<p>Click the button to get your coordinates.</p>
	<p id = "test"></p>
	
	<button onclick="getLocation()">Try It</button>
	<p id="demo"></p>
</div>


<script>
var x = document.getElementById("demo");
var t = document.getElementById("test");
var adde;
var addText;


if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(showPosition);
} else { 
 	t.innerHTML=t.innerHTML + "&";
    addText = document.createTextNode( "Geolocation is not supported by this browser." );
}

adde = document.createElement("p");
adde.appendChild( addText );
x.appendChild( adde );



function getLocation() {
 	t.innerHTML=t.innerHTML + "*";
    navigator.geolocation.watchPosition(showPosition);

	adde = document.createElement("p");
	adde.appendChild( addText );
	x.appendChild( adde );
}
    
function showPosition(position) {
 	t.innerHTML=t.innerHTML + "#";
    addText = document.createTextNode("  Latitude: " + position.coords.latitude + 
    "<br>Longitude: " + position.coords.longitude);
}

</script>
</body>
</html>