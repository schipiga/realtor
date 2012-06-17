class Flat < ActiveRecord::Base

  has_many :images

  attr_accessible :city, :country, :flat_number, :home_number, :street, :price, :description

  searchable do
    text :city, :country, :street, :price, :description
    time :created_at, :updated_at
  end
end
