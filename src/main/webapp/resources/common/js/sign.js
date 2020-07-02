var pwCheek = false;
var mailCheek = false;
var jusoIndex = 0;

//입력 양식 확인하고 submit
function fnSubmit(isFam){
	changeZone(isFam);
	
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

//보호자>환자 안심범위 초기화
function changeZone(isFam){
	if (isFam){
	    var zone = $('#patientZone').val();
		if(zone == ""){
			$('#patientZone').val(0);
		}
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