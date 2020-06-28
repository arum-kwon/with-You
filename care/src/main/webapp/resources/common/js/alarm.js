$(function(){
    console.log("헤더에 딸린거야");
	//알람 가져옴
	$.ajax({
	    type: "get",
	    url: "getAlarmCount.do",
	    success : function(data) {
		        console.log($(".alarm-count").length);
		        $(".alarm-count").text(data);
	    }, 
	    error : function(xhr, textStatus, errorThrown){
	        console.log(xhr, textStatus, errorThrown);
	    }
	});
	
});