$('document').ready(function() {
  $(".button-collapse").sideNav();
  $('.logo-wrapper').pushpin({ top: $('.logo-wrapper').offset().top - 80 });
  baguetteBox.run('.gallery');
});