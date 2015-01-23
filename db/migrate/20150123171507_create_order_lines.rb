class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.string :text
      t.string :dealText
      t.string :customerNote
      t.float :total
      t.float :price
      t.float :discount
      t.float :addonCost
      t.float :quantity
      t.boolean :deleted
      t.references :order, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
