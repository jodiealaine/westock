FactoryGirl.define do 
  factory :category do 
    name                  "Free"
    active                true
    visible_on_homepage   true
  end

  factory :product do 
    name              "Photo Pack 1"
    description       "Description of photo pack 1"
    image_url         "image.jpg"
    price             10.00
    availability_date "2014-08-08"
    active            true
    association       :category
  end
end
 