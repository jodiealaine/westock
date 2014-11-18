class Product < ActiveRecord::Base
	validates :name, :description, :image_url, :price, :availability_date, :category, :active, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.00}
end
