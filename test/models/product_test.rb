require 'test_helper'

class ProductTest < ActiveSupport::TestCase
	fixtures :products
  test "product attributes must not be empty" do 
  	product = Product.new
  	assert product.invalid?
  	assert product.errors[:name].any?
  	assert product.errors[:description].any?
  	assert product.errors[:image_url].any?
  	assert product.errors[:price].any?
  	assert product.errors[:availability_date].any?
  	assert product.errors[:category].any?
  	assert product.errors[:active].any?
  end

  test "product price must be zero or greater" do 
  	product = Product.new(name: 							"Test Image Pack",
  												description: 				"Collection of test images",
  												image_url: 					"test-image.png",
  												availability_date: 	2014-12-01,
  												category: 					"free",
  												active: 						true)
  	product.price = -1
  	assert product.invalid?
  	assert_equal ["must be greater than or equal to 0.0"],
  	  product.errors[:price]

		product.price = 0
  	assert product.valid?
  	
  	product.price = 1
  	assert product.valid?
  end

  def new_product(image_url)
  	product = Product.new(name: 							"Test Image Pack",
  												description: 				"Collection of test images",
  												price: 							0,
  												image_url:          image_url, 
  												availability_date: 	2014-12-01,
  												category: 					"free",
  												active: 						true)
  end
  test "image_url" do 
  	ok  = %w{ test.gif test.jpg test.png test.GIF test.JPG test.PNG http://a.b.c/x/y/z/test.gif}
  	bad = %w{ test.doc test.gif/more test.gif.more} 
  	ok.each do |name|
  		assert new_product(name).valid?, "#{name} should be valid"
  	end
  	bad.each do |name|
  		assert new_product(name).invalid?, "#{name} shouldn't be valid"
  	end
  end
end
