class AddedToCartItem < ApplicationRecord
  belongs_to :product
  belongs_to :order, optional: true

  def subtotal
    self.quantity * self.price
  end
end
