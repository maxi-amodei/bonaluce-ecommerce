class Order < ApplicationRecord
  belongs_to :user
  has_many :added_to_cart_items
end
