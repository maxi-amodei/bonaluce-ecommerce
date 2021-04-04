class ChangeOrderIdNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :added_to_cart_items, :order_id, true
  end
end
