$('document').ready(function() {
  baguetteBox.run('.gallery');
  $(".button-collapse").sideNav();
  $('.logo-wrapper').pushpin({ top: $('.logo-wrapper').offset().top - 80 });
});