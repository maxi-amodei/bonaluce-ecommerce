class AddProductToAddedToCartItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :added_to_cart_items, :product, null: false, index: true, foreign_key: true
  end
end
