$ ->

  thumbsrc = $('#exhibit1').attr('src')
  $('.gallery-exhibit').zoom({url: thumbsrc})

  $(".abt-li").on "hover", (e) ->
    $(this).child('.abt-text-box').css('display: block')