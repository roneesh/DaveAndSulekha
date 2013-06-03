$ ->
  thumbsrc = $('#exhibit1').attr('src')
  $('.gallery-exhibit').zoom({url: thumbsrc})

  $(".gallery-thumb").on "click", (e) ->
    thumbsrc = $(e.target).attr('src')
    exhibitsrc = $('#exhibit1').attr('src')
    $(e.target).attr('src', exhibitsrc)
    $('#exhibit1').attr('src', thumbsrc)
    $('.gallery-exhibit').zoom({url: thumbsrc})