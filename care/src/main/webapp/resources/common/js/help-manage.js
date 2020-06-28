var sNo;
var pNo;
var fNo;
var type=0; //0:디폴트, 1:출근, 2:퇴근

function btnStart(date, startTime, endTime){
	type = 1;
	var text = $('#realStartTime').text();
	if(text==""){ //출근 안 했음. 해야됨
	    var yyyy = date.substr(0,4);
	    var mm = date.substr(5,2);
	    var dd = date.substr(8,2);
	    
	    var applyStartDate = new Date(yyyy, mm-1, dd, startTime-1);
	    var applyEndDate = new Date(yyyy, mm-1, dd, endTime);
		var today = new Date();
	    if(applyStartDate > today){
	    	console.log("입실 가능");
	    	helperStartCheck();
	    }else if(applyStartDate < today){
	    	console.log("님 지각");
	    	helperStartCheck();
	    }else if(applyEndDate < today){
	    	console.log("님 결석");
	    	helperStartCheck();
	    }
	}else{
    	console.log("이미 출근함");
	}
}

function btnEnd(date, endTime){
	serviceNo = sNo;
	type = 2;
	var text = $('#realStartTime').text();
	if(text==""){
		//출근 안 했음. 출근부터 해야됨
    	console.log("출근부터하셈");
	}else{
		text = $('#realEndTime').text();
		if(text==""){ //퇴근처리
			var yyyy = date.substr(0,4);
		    var mm = date.substr(5,2);
		    var dd = date.substr(8,2);
		    
		    var applyEndDate = new Date(yyyy, mm-1, dd, endTime);
			var today = new Date();
		    if(applyEndDate > today){
		    	console.log("조퇴");
		    	helperStartCheck();
		    }else if(applyEndDate < today){
		    	console.log("정상퇴근");
		    	helperStartCheck();
		    }
		}else{
	    	console.log("이미 퇴근 했음");
		}
	}
}

//안드로이드로 환자 위치 전달
function helperStartCheck(){
	$.ajax({
	    type: "post",
	    url: "getPatientLoc.do",
	    data: { "patientNo": pNo },
	    success : function(result) {
	    	//테스트를 위해 임의로 잉벤트 발생
	    	setResult(true)
	    	
	    	//가져온 위치를 앱으로 보낸다.
	    	window.MyApp.helperLocCheck(result.patientLongitude, result.patientLatitude);
	    }, 
	    error : function(xhr, textStatus, errorThrown){
	    	console.log(xhr, textStatus, errorThrown);
	    }
	});
}

//안드로이드에서 결과값 받아옴
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
		    url: url,
		    data: { "serviceNo": sNo, "familyNo": fNo},
		    success : function(result) {
		    	if(type == 1){
			    	//출근 시간을 표시
					$('#realStartTime').text(result.realStartTime);
		    	}else if(type == 2){
			    	//퇴근 시간을 표시
					$('#realEndTime').text(result.realEndTime);
		    	}
		    }, 
		    error : function(xhr, textStatus, errorThrown){
		    	console.log(xhr, textStatus, errorThrown);
		    }
		});
	}else{
		document.getElementById('testBtn').innerHTML="유효하지 않은 요청입니다";
	}
}

//출퇴근시간 표시
function getStartTime(serviceNo){
	$.ajax({
	    type: "post",
	    url: "getRealTimes.do",
	    data: { "serviceNo": sNo },
	    success : function(result) {
	    	console.log(result);
	    	//출퇴근 시간을 표시
			$('#realStartTime').text(result.realStartTime);
			$('#realEndTime').text(result.realEndTime);
	    }, 
	    error : function(xhr, textStatus, errorThrown){
	    	console.log(xhr, textStatus, errorThrown);
	    }
	});
}

//타임 형변환
function changeTime(time){
	var cTime = time.getHours()+':'+time.getMinutes();
	return cTime;
}

$(function(){
	//초기 변수값 세팅
	sNo = $('#serviceNo').val();
	pNo = $('#patientNo').val();
	fNo = $('#fmailyNo').val();
	
	//페이지 로딩하면서 출퇴근시간 표시
	getStartTime();
	
});

	