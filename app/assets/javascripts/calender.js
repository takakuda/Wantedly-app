$(document).ready(function() {
    $('#calendar').fullCalendar({
      dayClick: function(date, allDay, jsEvent, view) {

      var title = prompt('予定を入力してください:');

      $('#calendar').fullCalendar('addEventSource', [{
        id:date,
        title: title,
        start: date,
        allDay: allDay
      }]);

      }
    });
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
