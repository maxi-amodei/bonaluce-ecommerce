class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.float :total_amount
      t.integer :total_items

      t.timestamps
    end
  end
end
