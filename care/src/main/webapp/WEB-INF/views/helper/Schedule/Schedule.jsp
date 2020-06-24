<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/schedule/core/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/schedule/core/main.css">
<script src="${pageContext.request.contextPath}/resources/schedule/core/main.js"></script>

<script src="${pageContext.request.contextPath}/resources/schedule/vendor/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/vendor/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/vendor/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/vendor/js/fullcalendar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/vendor/js/ko.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/vendor/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/vendor/js/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/main.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/addEvent.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/editEvent.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/etcSetting.js"></script>
<script>
var draggedEventIsAllDay;
var activeInactiveWeekends = true;

function getDisplayEventDate(event) {

  var displayEventDate;

  if (event.allDay == false) {
    var startTimeEventInfo = moment(event.start).format('HH:mm');
    var endTimeEventInfo = moment(event.end).format('HH:mm');
    displayEventDate = startTimeEventInfo + " - " + endTimeEventInfo;
  } else {
    displayEventDate = "�Ϸ�����";
  }

  return displayEventDate;
}

function filtering(event) {
  var show_username = true;
  var show_type = true;

  var username = $('input:checkbox.filter:checked').map(function () {
    return $(this).val();
  }).get();
  var types = $('#type_filter').val();

  show_username = username.indexOf(event.username) >= 0;

  if (types && types.length > 0) {
    if (types[0] == "all") {
      show_type = true;
    } else {
      show_type = types.indexOf(event.type) >= 0;
    }
  }

  return show_username && show_type;
}

function calDateWhenResize(event) {

  var newDates = {
    startDate: '',
    endDate: ''
  };

  if (event.allDay) {
    newDates.startDate = moment(event.start._d).format('YYYY-MM-DD');
    newDates.endDate = moment(event.end._d).subtract(1, 'days').format('YYYY-MM-DD');
  } else {
    newDates.startDate = moment(event.start._d).format('YYYY-MM-DD HH:mm');
    newDates.endDate = moment(event.end._d).format('YYYY-MM-DD HH:mm');
  }

  return newDates;
}

function calDateWhenDragnDrop(event) {
  // ����� ������ ��¥�ݿ�
  var newDates = {
    startDate: '',
    endDate: ''
  }

  // ��¥ & �ð��� ��� ���� ���
  if(!event.end) {
    event.end = event.start;
  }

  //�Ϸ�¥�� all day
  if (event.allDay && event.end === event.start) {
    console.log('1111')
    newDates.startDate = moment(event.start._d).format('YYYY-MM-DD');
    newDates.endDate = newDates.startDate;
  }

  //2���̻� all day
  else if (event.allDay && event.end !== null) {
    newDates.startDate = moment(event.start._d).format('YYYY-MM-DD');
    newDates.endDate = moment(event.end._d).subtract(1, 'days').format('YYYY-MM-DD');
  }

  //all day�� �ƴ�
  else if (!event.allDay) {
    newDates.startDate = moment(event.start._d).format('YYYY-MM-DD HH:mm');
    newDates.endDate = moment(event.end._d).format('YYYY-MM-DD HH:mm');
  }

  return newDates;
}


var calendar = $('#calendar').fullCalendar({

  eventRender: function (event, element, view) {

    //������ hover�� ���
    element.popover({
      title: $('<div />', {
        class: 'popoverTitleCalendar',
        text: event.title
      }).css({
        'background': event.backgroundColor,
        'color': event.textColor
      }),
      content: $('<div />', {
          class: 'popoverInfoCalendar'
        }).append('<p><strong>�����:</strong> ' + event.username + '</p>')
        .append('<p><strong>����:</strong> ' + event.type + '</p>')
        .append('<p><strong>�ð�:</strong> ' + getDisplayEventDate(event) + '</p>')
        .append('<div class="popoverDescCalendar"><strong>����:</strong> ' + event.description + '</div>'),
      delay: {
        show: "800",
        hide: "50"
      },
      trigger: 'hover',
      placement: 'top',
      html: true,
      container: 'body'
    });
<%--
    return filtering(event);
--%>
	return ture;
  },

  //�ָ� ����� & ���̱� ��ư
  customButtons: {
    viewWeekends: {
      text: '�ָ�',
      click: function () {
        activeInactiveWeekends ? activeInactiveWeekends = false : activeInactiveWeekends = true;
        $('#calendar').fullCalendar('option', {
          weekends: activeInactiveWeekends
        });
      }
    }
  },

  header: {
    left: 'today, prevYear, nextYear, viewWeekends',
    center: 'prev, title, next',
    right: 'month,agendaWeek,agendaDay,listWeek'
  },
  views: {
    month: {
      columnFormat: 'dddd'
    },
    agendaWeek: {
      columnFormat: 'M/D ddd',
      titleFormat: 'YYYY�� M�� D��',
      eventLimit: false
    },
    agendaDay: {
      columnFormat: 'dddd',
      eventLimit: false
    },
    listWeek: {
      columnFormat: ''
    }
  },

  /* ****************
   *  ���� �޾ƿ� 
   * ************** */
  events: function (start, end, timezone, callback) {
    $.ajax({
      type: "get",
      url: "data.json",
      data: {
        // ���� ����, ��¥�� ������ �����Ⱓ �����͸� �޾ƿ��⸦ ����
      },
      success: function (response) {
        var fixedDate = response.map(function (array) {
          if (array.allDay && array.start !== array.end) {
            // ��Ʋ �̻� AllDay ������ ��� �޷¿� ǥ��� �Ϸ縦 ���ؾ� �������
            array.end = moment(array.end).add(1, 'days');
          }
          return array;
        })
        callback(fixedDate);
      }
    });
  },

  eventAfterAllRender: function (view) {
    if (view.name == "month") {
      $(".fc-content").css('height', 'auto');
    }
  },

  //���� ��������
  eventResize: function (event, delta, revertFunc, jsEvent, ui, view) {
    $('.popover.fade.top').remove();

    /** ��������� ������ ��¥�ݿ�
     * �Ϸ縦 ���� ���������� �ݿ���. */
    var newDates = calDateWhenResize(event);

    //���������� ���� ������Ʈ
    $.ajax({
      type: "get",
      url: "",
      data: {
        //id: event._id,
        //....
      },
      success: function (response) {
        alert('����: ' + newDates.startDate + ' ~ ' + newDates.endDate);
      }
    });

  },

  eventDragStart: function (event, jsEvent, ui, view) {
    draggedEventIsAllDay = event.allDay;
  },

  //���� �巡�׾ص��
  eventDrop: function (event, delta, revertFunc, jsEvent, ui, view) {
    $('.popover.fade.top').remove();

    //��,�� view�϶� ���� <-> �ð� ����Ұ�
    if (view.type === 'agendaWeek' || view.type === 'agendaDay') {
      if (draggedEventIsAllDay !== event.allDay) {
        alert('�巡�׾ص������ ����<->�ð� ������ �Ұ��մϴ�.');
        location.reload();
        return false;
      }
    }

    // ����� ������ ��¥�ݿ�
    var newDates = calDateWhenDragnDrop(event);

    //����� ���� ������Ʈ
    $.ajax({
      type: "get",
      url: "",
      data: {
        //...
      },
      success: function (response) {
        alert('����: ' + newDates.startDate + ' ~ ' + newDates.endDate);
      }
    });

  },

  select: function (startDate, endDate, jsEvent, view) {

    $(".fc-body").unbind('click');
    $(".fc-body").on('click', 'td', function (e) {

      $("#contextMenu")
        .addClass("contextOpened")
        .css({
          display: "block",
          left: e.pageX,
          top: e.pageY
        });
      return false;
    });

    var today = moment();

    if (view.name == "month") {
      startDate.set({
        hours: today.hours(),
        minute: today.minutes()
      });
      startDate = moment(startDate).format('YYYY-MM-DD HH:mm');
      endDate = moment(endDate).subtract(1, 'days');

      endDate.set({
        hours: today.hours() + 1,
        minute: today.minutes()
      });
      endDate = moment(endDate).format('YYYY-MM-DD HH:mm');
    } else {
      startDate = moment(startDate).format('YYYY-MM-DD HH:mm');
      endDate = moment(endDate).format('YYYY-MM-DD HH:mm');
    }

    //��¥ Ŭ���� ī�װ� ���ø޴�
    var $contextMenu = $("#contextMenu");
    $contextMenu.on("click", "a", function (e) {
      e.preventDefault();

      //�ݱ� ��ư�� �ƴҶ�
      if ($(this).data().role !== 'close') {
        newEvent(startDate, endDate, $(this).html());
      }

      $contextMenu.removeClass("contextOpened");
      $contextMenu.hide();
    });

    $('body').on('click', function () {
      $contextMenu.removeClass("contextOpened");
      $contextMenu.hide();
    });

  },

  //�̺�Ʈ Ŭ���� �����̺�Ʈ
  eventClick: function (event, jsEvent, view) {
    editEvent(event);
  },

  locale: 'ko',
  timezone: "local",
  nextDayThreshold: "09:00:00",
  allDaySlot: true,
  displayEventTime: true,
  displayEventEnd: true,
  firstDay: 0, //�������� ���� ���� �Ϸ��� 1
  weekNumbers: false,
  selectable: true,
  weekNumberCalculation: "ISO",
  eventLimit: true,
  views: {
    month: {
      eventLimit: 12
    }
  },
  eventLimitClick: 'week', //popover
  navLinks: true,
  defaultDate: moment('2019-05'), //���� ���� ����
  timeFormat: 'HH:mm',
  defaultTimedEventDuration: '01:00:00',
  editable: true,
  minTime: '00:00:00',
  maxTime: '24:00:00',
  slotLabelFormat: 'HH:mm',
  weekends: true,
  nowIndicator: true,
  dayPopoverFormat: 'MM/DD dddd',
  longPressDelay: 0,
  eventLongPressDelay: 0,
  selectLongPressDelay: 0
});

 
</script>
  </head>
  <body>
    <div class="container">

        <!-- ���� Ŭ���� �޴����� -->
        <div id="contextMenu" class="dropdown clearfix">
            <ul class="dropdown-menu dropNewEvent" role="menu" aria-labelledby="dropdownMenu"
                style="display:block;position:static;margin-bottom:5px;">
                <li><a tabindex="-1" href="#">ī�װ�1</a></li>
                <li><a tabindex="-1" href="#">ī�װ�2</a></li>
                <li><a tabindex="-1" href="#">ī�װ�3</a></li>
                <li><a tabindex="-1" href="#">ī�װ�4</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#" data-role="close">Close</a></li>
            </ul>
        </div>

        <div id="wrapper">
            <div id="loading"></div>
            <div id="calendar"></div>
        </div>


        <!-- ���� �߰� MODAL -->	
        <div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-allDay">�Ϸ�����</label>
                                <input class='allDayNewEvent' id="edit-allDay" type="checkbox"></label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-title">������</label>
                                <input class="inputModal" type="text" name="edit-title" id="edit-title"
                                    required="required" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-start">����</label>
                                <input class="inputModal" type="text" name="edit-start" id="edit-start" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-end">��</label>
                                <input class="inputModal" type="text" name="edit-end" id="edit-end" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-type">����</label>
                                <select class="inputModal" type="text" name="edit-type" id="edit-type">
                                    <option value="ī�װ�1">ī�װ�1</option>
                                    <option value="ī�װ�2">ī�װ�2</option>
                                    <option value="ī�װ�3">ī�װ�3</option>
                                    <option value="ī�װ�4">ī�װ�4</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-color">����</label>
                                <select class="inputModal" name="color" id="edit-color">
                                    <option value="#D25565" style="color:#D25565;">������</option>
                                    <option value="#9775fa" style="color:#9775fa;">�����</option>
                                    <option value="#ffa94d" style="color:#ffa94d;">��Ȳ��</option>
                                    <option value="#74c0fc" style="color:#74c0fc;">�Ķ���</option>
                                    <option value="#f06595" style="color:#f06595;">��ũ��</option>
                                    <option value="#63e6be" style="color:#63e6be;">���λ�</option>
                                    <option value="#a9e34b" style="color:#a9e34b;">�ʷϻ�</option>
                                    <option value="#4d638c" style="color:#4d638c;">����</option>
                                    <option value="#495057" style="color:#495057;">������</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <label class="col-xs-4" for="edit-desc">����</label>
                                <textarea rows="4" cols="50" class="inputModal" name="edit-desc"
                                    id="edit-desc"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer modalBtnContainer-addEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">���</button>
                        <button type="button" class="btn btn-primary" id="save-event">����</button>
                    </div>
                    <div class="modal-footer modalBtnContainer-modifyEvent">
                        <button type="button" class="btn btn-default" data-dismiss="modal">�ݱ�</button>
                        <button type="button" class="btn btn-danger" id="deleteEvent">����</button>
                        <button type="button" class="btn btn-primary" id="updateEvent">����</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <div class="panel panel-default">

            <div class="panel-heading">
                <h3 class="panel-title">����</h3>
            </div>

            <div class="panel-body">

                <div class="col-lg-6">
                    <label for="calendar_view">���к�</label>
                    <div class="input-group">
                        <select class="filter" id="type_filter" multiple="multiple">
                            <option value="ī�װ�1">ī�װ�1</option>
                            <option value="ī�װ�2">ī�װ�2</option>
                            <option value="ī�װ�3">ī�װ�3</option>
                            <option value="ī�װ�4">ī�װ�4</option>
                        </select>
                    </div>
                </div>

                <div class="col-lg-6">
                    <label for="calendar_view">����ں�</label>
                    <div class="input-group">
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="����"
                                checked>����</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="����"
                                checked>����</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="�糪"
                                checked>�糪</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="����"
                                checked>����</label>
                        <label class="checkbox-inline"><input class='filter' type="checkbox" value="��ȿ"
                                checked>��ȿ</label>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.filter panel -->
    </div>
    <!-- /.container -->

    
</body>
</html>