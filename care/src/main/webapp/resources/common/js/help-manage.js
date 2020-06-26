var serviceNo;
var type=0; //0:디폴트, 1:출근, 2:퇴근

function btnStart(pNo, sNo, date, starttime, endTime){
	serviceNo = sNo;
	type = 1;
	var text = $('#realStartTime').text();
	if(text==""){ //출근 안 했음. 해야됨
	    var yyyy = date.substr(0,4);
	    var mm = date.substr(5,2);
	    var dd = date.substr(8,2);
	    
	    var applyStartDate = new Date(yyyy, mm-1, dd, starttime-1);
	    var applyEndDate = new Date(yyyy, mm-1, dd, endTime);
		var today = new Date();
	    if(applyStartDate > today){
	    	console.log("입실 가능");
	    	helperStartCheck(sNo, pNo);
	    }else if(applyStartDate < today){
	    	console.log("님 지각");
	    	helperStartCheck(sNo, pNo);
	    }else if(applyEndDate < today){
	    	console.log("님 결석");
	    	helperStartCheck(sNo, pNo);
	    }
	}else{
    	console.log("이미 출근함");
	}
}

function btnEnd(pNo, sNo, date, endTime){
	serviceNo = sNo;
	type = 2;
	var text = $('#realStartTime').text();
	if(text==""){ //출근 안 했음. 해야됨
		//출근부터 해야됨
	}else{
		var yyyy = date.substr(0,4);
	    var mm = date.substr(5,2);
	    var dd = date.substr(8,2);
	    
	    var applyEndDate = new Date(yyyy, mm-1, dd, endTime);
		var today = new Date();
	    if(applyEndDate > today){
	    	console.log("조퇴");
	    	helperStartCheck(sNo, pNo);
	    }else if(applyEndDate < today){
	    	console.log("정상퇴근");
	    	helperStartCheck(sNo, pNo);
	    }
	}
	
}

function helperStartCheck(sNo, pNo){
	$.ajax({
	    type: "post",
	    url: "getPatientLoc.do",
	    data: { "patientNo": pNo },
	    success : function(result) {
	    	//가져온 위치를 앱으로 보낸다.
	    	window.MyApp.helperLocCheck(result.patientLongitude, result.patientLatitude);
	    }, 
	    error : function(xhr, textStatus, errorThrown){
	    }
	});
}

function setResult(isOK){
	var url;
	if(type == 1){
		var url = "setStartTime.do";
	}else if(type == 2){
		var url = "setEndTime.do";
	}
	
	if(isOK){
		//출근처리
		$.ajax({
		    type: "post",
		    url: "setStartTime.do",
		    data: { "serviceNo": serviceNo },
		    success : function(result) {
		    	if(type == 1){
			    	//출근 시간을 표시
					document.getElementById('realStartTime').innerText=changeTime(result.realStartTime);
		    	}else if(type == 2){
			    	//퇴근 시간을 표시
					document.getElementById('realEndTime').innerText=changeTime(result.realEndTime);
		    	}
		    }, 
		    error : function(xhr, textStatus, errorThrown){
		        alert(xhr);
		        alert(textStatus);
		        alert(errorThrown);
		    }
		});
	}else{
		document.getElementById('testBtn').innerHTML="유효하지 않은 요청입니다";
	}
}

function getStartTime(serviceNo){
	$.ajax({
	    type: "post",
	    url: "getRealTimes.do",
	    data: { "serviceNo": serviceNo },
	    success : function(result) {
	    	console.log(result);
	    	//출근 시간을 표시
	    	
			document.getElementById('realStartTime').innerText=changeTime(result.realStartTime);
			document.getElementById('realEndTime').innerText=changeTime(result.realEndTime);
	    }, 
	    error : function(xhr, textStatus, errorThrown){
	    }
	});
}

//타임 형변환
function changeTime(time){
	var cTime = time.getHours()+':'+time.getMinutes();
	return cTime;
}
	

	