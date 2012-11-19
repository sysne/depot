class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  attr_accessible :description, :image_url, :price, :title
end
