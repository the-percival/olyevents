jQuery ->
  MasonryIsCool = ->
    $("div#events").masonry
      itemSelector: "div.event"

  $(window).load ->
    MasonryIsCool()

  $(window).resize ->
    MasonryIsCool()

  $container = $('div#events')
  $container.infinitescroll
    loading:
      finishedMsg: "that's all we've got for now, bud."
      img: "/assets/loader.gif"
      speed: "fast"
    nextSelector: "nav.pagination span.next a"
    navSelector: "nav.pagination"
    itemSelector: "div.event"
    extraScrollPx: 50
    animate: false
    datatype: "html"
  , (newElements) ->
    $newElems = $(newElements)
    $container.append($newElems).masonry "appended", $newElems
    
    
