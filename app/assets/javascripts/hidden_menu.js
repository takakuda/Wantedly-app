$(function() {
  $(".header__profile").on("click", function() {
    $(".hidden-menu").fadeIn("slow");
  });
});
$(function() {
  $(".main-contents").on("click", function() {
    $(".hidden-menu").fadeOut("slow");
  });
});
