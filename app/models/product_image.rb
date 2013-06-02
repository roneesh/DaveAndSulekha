class ProductImage < ActiveRecord::Base
  attr_accessible :image_type, :product_id, :source

  belongs_to :product

end
