class AddDiameterToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_diameter, :string
  end
end
