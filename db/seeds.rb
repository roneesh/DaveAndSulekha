# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rp_desc = "The R.P. Sharma is a line of plaids I sourced in New Delhi. Running around the city I looked for bleeding madras, we ended up finding these few bolts in the basement of a fabric shop in an electronics market. When I saw them, my breath was taken away. Just like the old madras, alive with color, these are the square for summer. "
dn_desc = "I found these pastels in Chandigargh while sourcing fabric in the city of Corbusier. 'What's the provenance of these fabrics?' I asked. 'Hand loomed, from the villages sir'. These are rough hewn squares, made by our family tailor in Hoshiarpur, fold 'em, stuff 'em, they're the casual square. They still smell like India too."
webster_desc = "These fabrics are from around town in Hoshiarpur, when the heat abated I would go shopping, these were rescued from the corner of a fabric shop located in a meat market. These are really rough squares, basically unfinished, as they unfinish more with wear and washing they'll be nice."
img_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYHIutQvJpBupYxSh2QUDebWrpPGkceaoZIwxmi1vIIRW9P8pK7w"

products = [
  {name: "The R.P. Sharma in Green", price: 21, description: rp_desc },
  {name: "The R.P. Sharma in Blue", price: 21, description: rp_desc },
  {name: "The R.P. Sharma in Juniper and Yellow", price: 21, description: rp_desc },
  {name: "The R.P. Sharma in Navy and Red", price: 21, description: rp_desc },
  {name: "The D.N. Vashisht in Turqoise", price: 14, description: dn_desc },
  {name: "The D.N. Vashisht in Metal", price: 14, description: dn_desc },
  {name: "The D.N. Vashisht in Blue", price: 14, description: dn_desc },
  {name: "The D.N. Vashisht in Pink", price: 14, description: dn_desc },
  {name: "The Webster in Red", price: 8, description: webster_desc },
  {name: "The Webster in Orange", price: 8, description: webster_desc },
  {name: "The Webster in Gingham", price: 8, description: webster_desc }
]

products.each do |product|
  p = Product.create product
  3.times do |n|
    if n == 0
      ProductImage.create(product_id: p.id, image_type: "flat", source: img_url )
    elsif n == 1
      ProductImage.create(product_id: p.id, image_type: "navy_suit", source: img_url)
    elsif n == 2
      ProductImage.create(product_id: p.id, image_type: "stone_suit", source: img_url)
    end
  end
end

