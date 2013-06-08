class Product < ActiveRecord::Base
  attr_accessible :description, :etsy_link, :name, :price, :product_line

  has_many :product_images

  def flat_image_src
    self.product_images.where(image_type: "flat").sample.source
  end

  def navy_suit_image_src
    self.product_images.where(image_type: "navy_suit").sample.source
  end

  def stone_suit_image_src  
    self.product_images.where(image_type: "stone_suit").sample.source
  end

  def pattern_image_src
    self.product_images.where(image_type: "pattern").sample.source
  end 

end
