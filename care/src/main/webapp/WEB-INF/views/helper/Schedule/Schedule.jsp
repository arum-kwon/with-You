<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />

    <link href="${pageContext.request.contextPath}/resources/schedule/core/main.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/schedule/daygrid/main.css" rel="stylesheet" />

    <script src="${pageContext.request.contextPath}/resources/schedule/core/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/schedule/daygrid/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/schedule/core/moment.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script> -->	
   <script>
 
document.addEventListener('DOMContentLoaded', function() {
  var Calendar = FullCalendar.Calendar;
 
  var containerEl = document.getElementById('external-events');
  var calendarEl = document.getElementById('calendar');
  var checkbox = document.getElementById('drop-remove');
 
 
  // initialize the calendar
  // -----------------------------------------------------------------
 
  var calendar = new Calendar(calendarEl, {
    plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'dayGridMonth,timeGridWeek,timeGridDay'
    },
    editable: true,
    droppable: true, // this allows things to be dropped onto the calendar
    drop: function(info) {
      // is the "remove after drop" checkbox checked?
      if (checkbox.checked) {
        // if so, remove the element from the "Draggable Events" list
        info.draggedEl.parentNode.removeChild(info.draggedEl);
      }
    },
    locale: 'ko',
    events: [
        {
            title : 'evt1',
            start : '2019-09-03'
        },
        {
            title    :    'evt2',
            start    :    '2019-09-10',
            end    :    '2019-09-20'
        },
        {
            title    :    'evt3',
            start    :    '2019-09-25T12:30:00',
            allDay    :    false
        }
    ]
  });
 
  calendar.render();
  
  var arrTest = getCalendarDataInDB();
  $.each(arrTest, function(index, item){
        console.log('outer loop_in_cal' + index + ' : ' + item);
        $.each(item, function(iii, ttt){
            console.log('inner loop_in_cal => ' + iii + ' : ' + ttt);
        });
  });
  
  $("#btnAddTest").click(function(){
      //var arr = getCalendarEvent();
      var arr = getCalendarDataInDB();
      //console.log('arr[0].size : ' +  Object.keys( arr[0] ).length );
      $.each(arr, function(index, item){
          calendar.addEvent( item );
          console.log('click evt loop_in_cal' + index + ' : ' + item);
          $.each(item, function(iii, ttt){
                console.log('click evt inner loop_in_cal => ' + iii + ' : ' + ttt);
          });
      });
      
      //calendar.addEvent( {'title':'evt4', 'start':'2019-09-04', 'end':'2019-09-06'});
      calendar.render();
  });  
  //alert( '캘린더에서 알린다!!! 잘 받았다! ' + (arrTest.0.id) );
});
 
function getCalendarEvent(){
    //var arr = [ {'title':'evt4', 'start':'2019-09-04', 'end':'2019-09-06'} ];
    var arr = { 'title':'evt4', 'start':'2019-09-04', 'end':'2019-09-06' };
    return arr;
}
 
function getCalendarDataInDB(){
    var arr = [{title: 'evt1', start:'ssssss'}, {title: 'evt2', start:'123123123'}];
    
    //배열 초기화
    var viewData = {};
    //data[키] = 밸류
    viewData["id"] = $("#currId").text().trim();
    viewData["title"] = $("#title").val();
    viewData["content"] = $("#content").val();
    
    $.ajax({
        contentType:'application/json',
        dataType:'json',
        url:'calendar/getall',
        type:'post',
        async: false,
        data:JSON.stringify(viewData),
        success:function(resp){
            //alert(resp.f.id + ' ggg');     
            $.each(resp, function(index, item){
                console.log(index + ' : ' + item);
                $.each(item, function(iii, ttt){
                    console.log('inner loop => ' + iii + ' : ' + ttt);
                });
            });
            arr = resp;
        },
        error:function(){
            alert('저장 중 에러가 발생했습니다. 다시 시도해 주세요.');
        }
    });
    
    return arr;
}
 
</script>
  </head>
  <body>

    <div id='calendar'></div>

  </body>
</html>