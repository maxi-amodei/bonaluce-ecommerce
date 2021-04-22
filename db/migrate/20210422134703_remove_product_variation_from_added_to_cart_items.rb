class RemoveProductVariationFromAddedToCartItems < ActiveRecord::Migration[6.0]
  def change
    remove_reference :added_to_cart_items, :product_variation, null: false, index: true, foreign_key: true
  end
end
