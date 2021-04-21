class AddLengthToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_length, :string
  end
end
