class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
