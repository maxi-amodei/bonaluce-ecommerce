class CreateProductVariations < ActiveRecord::Migration[6.0]
  def change
    create_table :product_variations do |t|
      t.references :product, null: false, foreign_key: true
      t.string :size
      t.string :color
      t.boolean :published, default: true
      t.float :price
      t.integer :stock, default: 1
      t.float :discount_price
      t.string :name

      t.timestamps
    end
  end
end
