class Product < ActiveRecord::Base
	validates :name, :description, :image_url, :price, :availability_date, :category, :active, presence: true

end
