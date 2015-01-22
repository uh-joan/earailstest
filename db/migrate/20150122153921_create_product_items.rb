class CreateProductItems < ActiveRecord::Migration
  def change
    create_table :product_items do |t|
      t.string :name
      t.boolean :enabled
      t.boolean :deleted
      t.references :user, index: true
      t.references :product_group, index: true
      t.references :product_item_type, index: true

      t.timestamps null: false
    end
  end
end
