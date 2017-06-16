$(document).ready(function() {
    $('#calendar').fullCalendar({
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
