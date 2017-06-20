$(document).ready(function() {
    $('#calendar').fullCalendar({
      select: function(start, end, allDay) {
            var title = prompt('タイトルを入力してください');
                if (!allDay) {
                    $('#calendar').fullCalendar('renderEvent',
                    {
                        title: title,
                        start: start,
                        end: end,
                        color: 'pink',
                        allDay: false
                    });
                }
                else
                {
                    $('#calendar').fullCalendar('renderEvent',
                    {
                        title: title,
                        start: start,
                        end: end,
                        color: 'pink',
                        allDay: allDay
                    });
                };
                $('#calendar').fullCalendar('unselect');
                $.ajax({
                    url: '/api/gcals/create_event_self',
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        title: title,
                        start: start,
                        end: end
                    },
                })
        },
    })
});

$(function() {
  $(".calendar-btn").on("click", function() {
    $("#modal-content").show();
  });
});
$(function() {
  $(".menu-btn").on("click", function() {
    $("#modal-content").hide();
  });
});
