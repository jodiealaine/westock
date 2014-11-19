Factory.define :category do |category|
  category.name                  "Free"
  category.active                true
  category.visible_on_homepage   true
end
 
Factory.define :product do |product|
  product.name 							"Photo Pack 1"
  product.description 			"Description of photo pack 1"
  product.image_url 				"image.jpg"
  product.price 						10.00
  product.availability_date "2014-08-08"
  active										true
  product.association 			:category
end
 
Factory.sequence :category_name do |n|
  "#{n}"
end
 
Factory.define :category do |c|
  c.name  Factory.next :category_name
end