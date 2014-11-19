class Product < ActiveRecord::Base
	belongs_to :category
	validates :name, :description, :image_url, :price, :availability_date, :category_id, :active, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.00}
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG, or PNG image'
	}
	validates :name, uniqueness: true
end
