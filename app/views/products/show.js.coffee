$('.slice').fadeOut()
$('.main').fadeOut()
$('.product-container').html('<%= j render "slice", :product => @product %>')

