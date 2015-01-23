class CreateSalesOrderSources < ActiveRecord::Migration
  def change
    create_table :sales_order_sources do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
