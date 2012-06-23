var MasonryIsCool = function() {
  $("div#events").masonry({
    itemSelector: "div.event"
  });
}

$(window).load(function(){
  MasonryIsCool();
});

$(window).resize(function(){
  MasonryIsCool();
});

