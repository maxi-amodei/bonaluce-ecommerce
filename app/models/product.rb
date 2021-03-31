class Product < ApplicationRecord
  belongs_to :supplier
  has_many :product_variations
  has_many :product_categories
  has_many :categories, through: :product_categories
end
