# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Destroying all products..."
Product.destroy_all
puts "Products destroyed!"
puts "Destroyig all Product Images"
ProductImage.destroy_all
puts "Product Images destroyd!"

rp_desc = "The R.P. Sharma is a line of plaids I sourced in New Delhi. Running around the city I looked for bleeding madras, we ended up finding these few bolts in the basement of a fabric shop in an electronics market. When I saw them, my breath was taken away. Just like the old madras, alive with color, these are the square for summer. "
dn_desc = "I found these pastels in Chandigargh while sourcing fabric in the city of Corbusier. 'What's the provenance of these fabrics?' I asked. 'Hand loomed, from the villages sir'. These are rough hewn squares, made by our family tailor in Hoshiarpur, fold 'em, stuff 'em, they're the casual square. They still smell like India too."
webster_desc = "These fabrics are from around town in Hoshiarpur, when the heat abated I would go shopping, these were rescued from the corner of a fabric shop located in a meat market. These are really rough squares, basically unfinished, as they unfinish more with wear and washing they'll be nice."
img_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYHIutQvJpBupYxSh2QUDebWrpPGkceaoZIwxmi1vIIRW9P8pK7w"

products = [
  {name: "The R.P. in Navy and Red", product_line: "The Perfect Madras", price: 18, description: rp_desc, etsy_link: "https://www.etsy.com/listing/152201830/the-rp-sharma-pocket-square-in-navy-and", name_partial: "rp-navyred"},
  {name: "The R.P. in Green", product_line: "The Perfect Madras", price: 18, description: rp_desc, etsy_link: "https://www.etsy.com/listing/152200914/the-rp-sharma-pocket-square-in-green", name_partial: "rp-green" },
  {name: "The R.P. in Blue", product_line: "The Perfect Madras", price: 18, description: rp_desc, etsy_link: "https://www.etsy.com/listing/152204599/the-rp-sharma-pocket-square-in-blue", name_partial: "rp-blue" },
  {name: "The R.P. in Juniper and Yellow", product_line: "The Perfect Madras", price: 18, description: rp_desc, etsy_link: "https://www.etsy.com/listing/152202304/the-rp-sharma-pocket-square-in-juniper", name_partial: "rp-juniper"},
  {name: "The D.N. in Turqoise", product_line: "The Perfect Pastel", price: 14, description: dn_desc, etsy_link: "https://www.etsy.com/listing/152754916/the-dn-vashisht-pocket-square-in", name_partial: "dn-turqoise"},
  {name: "The D.N. in Metal", product_line: "The Perfect Pastel", price: 14, description: dn_desc, etsy_link: "https://www.etsy.com/listing/152757211/the-dn-vashisht-pocket-square-in-metal", name_partial: "dn-metal"},
  {name: "The D.N. in Blue", product_line: "The Perfect Pastel", price: 14, description: dn_desc, etsy_link: "https://www.etsy.com/listing/152754320/the-dn-vashisht-pocket-square-in-blue", name_partial: "dn-blue"},
  {name: "The D.N. in Pink", product_line: "The Perfect Pastel", price: 14, description: dn_desc, etsy_link: "https://www.etsy.com/listing/152753598/the-dn-vashisht-pocket-square-in-pink", name_partial: "dn-pink"},
  {name: "The Webster in Red", product_line: "Perfect Plaids and Gingham", price: 8, description: webster_desc, etsy_link: "https://www.etsy.com/listing/152759797/the-webster-pocket-square-in-red", name_partial: "webster-red"},
  {name: "The Webster in Orange", product_line: "Perfect Plaids and Gingham", price: 8, description: webster_desc, etsy_link: "https://www.etsy.com/listing/152759637/the-webster-pocket-square-in-orange", name_partial: "webster-orange" },
  {name: "The Webster in Gingham", product_line: "Perfect Plaids and Gingham", price: 8, description: webster_desc, etsy_link: "https://www.etsy.com/listing/152755192/the-webster-pocket-square-in-gingham", name_partial: "webster-gingham"}
]

products.each do |product|
  p = Product.create(name: product[:name], product_line: product[:product_line],   price: product[:price], description: product[:description], etsy_link: product[:etsy_link])
  puts "Created product #{p.id}..."
  5.times do |n|
    if n == 0
      ProductImage.create(product_id: p.id, image_type: "flat", source: "https://s3.amazonaws.com/dave-and-sulekha-images/flat/im-#{product[:name_partial]}-flat.JPG" )
      puts "Created product image for product #{p.id}"
    elsif n == 1
      ProductImage.create(product_id: p.id, image_type: "navy_suit", source: "https://s3.amazonaws.com/dave-and-sulekha-images/navy/im-#{product[:name_partial]}-navycoat.JPG")
      puts "Created product image for product #{p.id}"
    elsif n == 2
      ProductImage.create(product_id: p.id, image_type: "stone_suit", source: "https://s3.amazonaws.com/dave-and-sulekha-images/stone/im-#{product[:name_partial]}-stonecoat.JPG")
      puts "Created product image for product #{p.id}"
    elsif n == 3
      ProductImage.create(product_id: p.id, image_type: "gallery", source: "https://s3.amazonaws.com/dave-and-sulekha-images/gallery/im-#{product[:name_partial]}-gallery.JPG")
      puts "Created product image for product #{p.id}"
    elsif n == 4
      ProductImage.create(product_id: p.id, image_type: "pattern", source: "https://s3.amazonaws.com/dave-and-sulekha-images/pattern/im-#{product[:name_partial]}-pattern.JPG")
    end
  end
end

