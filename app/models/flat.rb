class Flat < ActiveRecord::Base

  has_many :images

  attr_accessible :city,
                  :country,
                  :flat_number,
                  :home_number,
                  :street,
                  :price,
                  :description

  attr_accessor :image_1,
                :image_2,
                :image_3

  after_save :add_images
  
  private

  def add_images
    self.images.create!(:photo => self.image_1)
    self.images.create!(:photo => self.image_2)
    self.images.create!(:photo => self.image_3)
  end
end
