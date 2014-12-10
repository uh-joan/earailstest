class CreateProductAddOns < ActiveRecord::Migration
  def change
    create_table :product_add_ons do |t|
      t.string :name
      t.string :onlineViewLabel
      t.string :printViewLabel
      t.string :posViewLabel
      t.integer :displayIndex
      t.boolean :visibleOnline
      t.boolean :visiblePos
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
