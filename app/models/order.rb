class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :added_to_cart_items


  def total_amount
    self.added_to_cart_items.reduce(0){ |sum, item| sum + item.subtotal }
  end
end
