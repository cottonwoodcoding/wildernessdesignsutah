$("document").ready(function() {
  baguetteBox.run(".gallery");
  $(".sidenav").sidenav();
  $(".logo-wrapper").pushpin({ top: $(".logo-wrapper").offset().top - 80 });
});
