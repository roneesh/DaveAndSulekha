$ ->
  $(".abt-li").on "click", (e) ->
    $(this).children('.abt-text-box').fadeToggle()