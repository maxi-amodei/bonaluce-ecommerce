class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :added_to_cart_items
end
