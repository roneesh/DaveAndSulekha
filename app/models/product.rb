class Product < ActiveRecord::Base
  attr_accessible :description, :etsy_link, :name, :price, :product_line

  has_many :product_images


end
