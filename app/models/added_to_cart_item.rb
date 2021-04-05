class AddedToCartItem < ApplicationRecord
  belongs_to :product_variation
  belongs_to :order, optional: true
end
