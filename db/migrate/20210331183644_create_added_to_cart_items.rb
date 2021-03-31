class CreateAddedToCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :added_to_cart_items do |t|
      t.references :product_variation, null: false, foreign_key: true
      t.integer :quantity
      t.references :order, null: false, foreign_key: true
      t.float :price
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
