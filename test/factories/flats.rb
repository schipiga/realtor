FactoryGirl.define do
  
  sequence :flat_number do |number|
    "f. #{number}"
  end
    
  factory :flat do
    country      'Russia'
    city         'Kazan'
    street       'Lenina'
    home_number  'h. 13'
    flat_number  'f. 1'
  end
end
