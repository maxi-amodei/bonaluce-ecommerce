class AddDiscountPriceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :discount_price, :float
  end
end
