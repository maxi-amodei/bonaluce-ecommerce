class AddWidthToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_width, :string
  end
end
