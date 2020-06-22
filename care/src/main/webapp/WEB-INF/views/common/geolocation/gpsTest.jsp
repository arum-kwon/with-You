<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name='viewport' content='width=device-width' />
    <style type='text/css'>
    @-ms-viewport { width: device-width; }
    @-o-viewport { width: device-width; }
    @viewport { width: device-width; }
</style>
</head>
<body>

<div>
    <p>Click the button to get your coordinates.</p>
    <p id = "test"></p>

    <button onclick="getLocation()">Try It</button>
    <p id="demo"></p>
	
	<form action="insertLocation.do" method="post">
		<input type="text" id="latitude" name="latitude">
		<input type="text" id="longitude" name="longitude">
		<button type="submit">전송</button>
	</form>
	
</div>



<script>
	var x = document.getElementById("demo");
	var t = document.getElementById("test");
	var adde;
	var addText;
	var str="";
	var count = 0;

	if (navigator.geolocation) {
	    navigator.geolocation.watchPosition(showPosition, showError);
	} else {
	 	t.innerHTML=t.innerHTML + "&";
	    addText = document.createTextNode( "Geolocation is not supported by this browser." );
	}
	adde = document.createElement("p");
	adde.appendChild( addText );
	x.appendChild( adde );

	function getLocation() {
	 	t.innerHTML=t.innerHTML + " B";
	 	str = "B : ";

		if (navigator.geolocation) {
		    navigator.geolocation.getCurrentPosition(showPosition, showError);
		} else {
		 	t.innerHTML=t.innerHTML + " not";
		    addText = document.createTextNode( "Geolocation is not supported by this browser." );

			adde = document.createElement("p");
			adde.appendChild( addText );
			x.appendChild( adde );
		}

	}

	function showPosition(position) {
	    count = count +1;
	 	t.innerHTML=t.innerHTML + " show" + count;
	    addText = document.createTextNode(str + "  Latitude: " + position.coords.latitude +
	    "<br>Longitude: " + position.coords.longitude);
		adde = document.createElement("p");
		adde.appendChild( addText );
		x.appendChild( adde );
	}

	function showError(error) {
		switch(error.code) {
		    case error.PERMISSION_DENIED:
		      x.innerHTML = "User denied the request for Geolocation."
		      break;
		    case error.POSITION_UNAVAILABLE:
		      x.innerHTML = "Location information is unavailable."
		      break;
		    case error.TIMEOUT:
		      x.innerHTML = "The request to get user location timed out."
		      break;
		    case error.UNKNOWN_ERROR:
		      x.innerHTML = "An unknown error occurred."
		      break;
		}
	}
	
</script>

</body>
</html>