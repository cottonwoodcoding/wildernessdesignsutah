$("document").ready(function () {
  $(".sidenav").sidenav();
  $(".logo-wrapper").pushpin({ top: $(".logo-wrapper").offset().top - 80 });

  const name = "wildernessdesignsutah";
  $.get(
    "https://images" +
      ~~(Math.random() * 3333) +
      "-focus-opensocial.googleusercontent.com/gadgets/proxy?container=none&url=https://www.instagram.com/" +
      name +
      "/",
    function (html) {
      if (html) {
        const regex = /_sharedData = ({.*);<\/script>/m,
          json = JSON.parse(regex.exec(html)[1]),
          edges =
            json.entry_data.ProfilePage[0].graphql.user
              .edge_owner_to_timeline_media.edges;

        $.each(edges, function (n, edge) {
          const node = edge.node;
          $(".gallery").append(`
            <div class="col s6 m3">
              <a href="${node.display_url}" data-caption="${node.edge_media_to_caption.edges[0].node.text}">
                 <img class='responsive-img work-photo' src="${node.thumbnail_src}" />
               </a>
            </div>`);
        });
      }
      baguetteBox.run(".gallery");
    }
  );
});
