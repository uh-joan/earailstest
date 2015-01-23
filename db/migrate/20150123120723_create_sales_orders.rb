class CreateSalesOrders < ActiveRecord::Migration
  def change
    create_table :sales_orders do |t|
      t.string :name
      t.float :total
      t.float :subtotal
      t.float :discount
      t.float :surcharge
      t.boolean :enabled
      t.boolean :deleted
      t.references :sales_order_type, index: true
      t.references :sales_order_status, index: true
      t.references :sales_order_source, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
