class Category < ActiveRecord::Base
  attr_accessible :name, :description, :category_id
  has_many :products
  validates :name, :active, :visible_on_homepage, presence: true
  validates :name, uniqueness: true
end
