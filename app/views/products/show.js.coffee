$('.slice').fadeOut()
$('.main').fadeOut()
$('.product-container').html('<%= j render "slice", :product => @product %>')

thumbsrc = $('#exhibit1').attr('src')
$('.gallery-exhibit').zoom({url: thumbsrc})

$(".gallery-thumb").on "click", (e) ->
  thumbsrc = $(e.target).attr('src')
  $('#exhibit1').attr('src', thumbsrc)
  $('.gallery-exhibit').zoom({url: thumbsrc})