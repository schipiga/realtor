class Flat < ActiveRecord::Base

  belongs_to :user
  has_many :images

  attr_accessible :city, :country, :flat_number, :home_number, :street, :price, :description

  searchable do
    text :city
    text :flat_number
  end
end
