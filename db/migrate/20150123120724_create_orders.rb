class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.float :total
      t.float :subtotal
      t.float :discount
      t.float :surcharge
      t.boolean :enabled
      t.boolean :deleted
      t.references :order_type, index: true
      t.references :order_status, index: true
      t.references :order_source, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
