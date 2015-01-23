class CreateSalesOrderTypes < ActiveRecord::Migration
  def change
    create_table :sales_order_types do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
