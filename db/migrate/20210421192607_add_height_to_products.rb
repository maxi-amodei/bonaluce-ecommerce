class AddHeightToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_height, :string
  end
end
