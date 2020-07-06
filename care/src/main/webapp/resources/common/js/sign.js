var pwCheek = false;
var mailCheek = false;
var jusoIndex = 0;

//입력 양식 확인하고 submit
function fnSubmit(){
	if(!pwCheek){
		$(".pw-check:eq(0)").focus();
		alert("비밀번호를 확인해주세요");
		if(!mailCheek){
			$(".email-check:eq(0)").focus();
			alert("유효하지 않는 이메일입니다.");
		}
	}else{
		pwSHA256();
		$("#mainFrm").submit();
	}
}

function formCheckF(){
	//보호자 정보 유효성 검사
	if($('#familyEmail').val() == ""){
		$('#familyEmail').focus();
		alert("이메일을 비워둘 수 없습니다.");
		return;
	} else if($('#familyPw').val() == ""){
		$('#familyPw').focus();
		alert("비밀번호를 비워둘 수 없습니다.");
		return;
	} else if($('#familyName').val() == ""){
		$('#familyName').focus();
		alert("이름을 비워둘 수 없습니다.");
		return;
	} else if($('#familySex').val() == ""){
		$('#familySex').focus();
		alert("성별을 비워둘 수 없습니다.");
		return;
	} else if($('#familyBirthY').val() == ""){
		$('#familyBirthY').focus();
		alert("생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#familyBirthM').val() == ""){
		$('#familyBirthM').focus();
		alert("생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#familyBirthD').val() == ""){
		$('#familyBirthD').focus();
		alert("생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#familyTel').val() == ""){
		$('#familyTel').focus();
		alert("전화번호를 비워둘 수 없습니다.");
		return;
	} else if($('#familyAddr').val() == ""){
		$('#familyAddr').focus();
		alert("주소를 비워둘 수 없습니다.");
		return;
		
		//환자 정보 유효성 검사
	} else if($('#patientName').val() == ""){
		$('#patientName').focus();
		alert("환자의 이름을 비워둘 수 없습니다.");
		return;
	} else if($('#patientSex').val() == ""){
		$('#patientSex').focus();
		alert("환자의 성별을 비워둘 수 없습니다.");
		return;
	} else if($('#patientBirthY').val() == ""){
		$('#patientBirthY').focus();
		alert("환자의 생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#patientBirthM').val() == ""){
		$('#patientBirthM').focus();
		alert("환자의 생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#patientBirthD').val() == ""){
		$('#patientBirthD').focus();
		alert("환자의 생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#patientTel').val() == ""){
		$('#patientTel').focus();
		alert("환자의 전화번호를 비워둘 수 없습니다.");
		return;
	} else if($('#patientAddr').val() == ""){
		$('#patientAddr').focus();
		alert("환자의 주소를 비워둘 수 없습니다.");
		return;
	} else if($('#patientFamilyTel').val() == ""){
		$('#patientFamilyTel').focus();
		alert("환자의 비상연락처를 비워둘 수 없습니다.");
		return;
	} else if($('#patientBlood').val() == ""){
		$('#patientBlood').focus();
		alert("환자의 혈액형을 비워둘 수 없습니다.");
		return;
	} else if($('#patientZone').val() == ""){
		$('#patientZone').focus();
		alert("안심구역을 비워둘 수 없습니다.");
		return;
	} else {
		fnSubmit();
	}
}

function formCheckH(){
	/*
	if(true){ //자격증, 경력 유효 확인
		for(var i=0; i < $(".certification-form").length; i++){
			alert($(".certification-form").length + "gogogogo");
		}
	}
	*/
	if($('#helperEmail').val() == ""){
		$('#helperEmail').focus();
		alert("이메일을 비워둘 수 없습니다.");
		return;
	} else if($('#helperPw').val() == ""){
		$('#helperPw').focus();
		alert("비밀번호를 비워둘 수 없습니다.");
		return;
	} else if($('#helperName').val() == ""){
		$('#helperName').focus();
		alert("이름을 비워둘 수 없습니다.");
		return;
	} else if($('#helperSex').val() == ""){
		$('#helperSex').focus();
		alert("성별을 비워둘 수 없습니다.");
		return;
	} else if($('#helperBirthY').val() == ""){
		$('#helperBirthY').focus();
		alert("생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#helperBirthM').val() == ""){
		$('#helperBirthM').focus();
		alert("생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#helperBirthD').val() == ""){
		$('#helperBirthD').focus();
		alert("생년월일을 비워둘 수 없습니다.");
		return;
	} else if($('#helperTel').val() == ""){
		$('#helperTel').focus();
		alert("전화번호를 비워둘 수 없습니다.");
		return;
	} else if($('#helperAddr').val() == ""){
		$('#helperAddr').focus();
		alert("주소를 비워둘 수 없습니다.");
		return;
	} else if($('#helperWorkArea1').val() == ""){
		$('#helperWorkArea1').focus();
		alert("희망근무지역을 비워둘 수 없습니다.");
		return;
	} else if($('#helperWorkArea2').val() == ""){
		$('#helperWorkArea2').focus();
		alert("희망근무지역을 비워둘 수 없습니다.");
		return;
	} else if($('#helperStartTime').val() == ""){
		$('#helperStartTime').focus();
		alert("희망근무시작시간을 비워둘 수 없습니다.");
		return;
	} else if($('#helperEndTime').val() == ""){
		$('#helperEndTime').focus();
		alert("희망근무종료시간을 비워둘 수 없습니다.");
		return;
	}  else {
		fnSubmit();
	}  
}

$(function(){
	//이메일 중복확인 ajax
	$(".email-check:eq(0)").focusout(function () {
		var ob = $('.email-check:eq(0)');
		var key = ob.attr('id');
		var val = ob.val();
		
		if(key == "helperEmail"){
			var jdate = { "helperEmail": val };
		}
		if(key == "familyEmail"){
			var jdate = { "familyEmail" : val };
		}
		
		$.ajax({
		    type: "post",
		    url: "checkEmail.do",
		    data: jdate,
		    success : function(data) {
		    	if(data == 0){
	                // 이메일 사용 가능
	                $("#email-success").css('display', 'inline-block');
	                $("#email-danger").css('display', 'none');
	                mailCheek = true;
		    	}else{
	                // 이메일 불사용 가능
	                $("#email-success").css('display', 'none');
	                $("#email-danger").css('display', 'inline-block');
	                mailCheek = false;
		    	}
		    }, 
		    error : function(xhr, textStatus, errorThrown){
		        alert(xhr);
		        alert(textStatus);
		        alert(errorThrown);
		    }
		});
    });
	
	//비밀번호 일치 확인
	$(".pw-check").keyup(function () {
	    var pwd1 = $('.pw-check:eq(0)').val();
	    var pwd2 = $('.pw-check:eq(1)').val();
 
    	if(pwd1 != "" || pwd2 != ""){
            if (pwd1 == pwd2) {
                // 비밀번호 일치 이벤트 실행
                $("#pw-success").css('display', 'inline-block');
                $("#pw-danger").css('display', 'none');
                pwCheek = true;
            } else {
                // 비밀번호 불일치 이벤트 실행
                $("#pw-success").css('display', 'none');
                $("#pw-danger").css('display', 'inline-block');
                pwCheek = false;
            }
        }
    });

});