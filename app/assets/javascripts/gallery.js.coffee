$ ->

  console.log('hello from line 3')
  thumbsrc = $('#exhibit1').attr('src')
  $('.gallery-exhibit').zoom({url: thumbsrc})

  $(".gallery-thumb").on "click", (e) ->
    thumbsrc = $(e.target).attr('src')
    exhibitsrc = $('#exhibit1').attr('src')
    console.log('hello from line 10')
    $(e.target).attr('src', exhibitsrc)
    $('#exhibit1').attr('src', thumbsrc)
    $('.gallery-exhibit').zoom({url: thumbsrc})