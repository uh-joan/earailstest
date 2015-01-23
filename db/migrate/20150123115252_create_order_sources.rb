class CreateOrderSources < ActiveRecord::Migration
  def change
    create_table :order_sources do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
