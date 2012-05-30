class Flat < ActiveRecord::Base

  has_many :images

  attr_accessible :city, :country, :flat_number, :home_number, :street, :price, :description
end
