class Category < ActiveRecord::Base
  has_many :products
  validates :name, :active, :visible_on_homepage, presence: true
  validates :name, uniqueness: true
end
