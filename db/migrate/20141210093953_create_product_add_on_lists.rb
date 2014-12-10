class CreateProductAddOnLists < ActiveRecord::Migration
  def change
    create_table :product_add_on_lists do |t|
      t.string :name
      t.string :onlineViewLabel
      t.string :posViewLabel
      t.boolean :sortListByIndex
      t.boolean :sortListByName
      t.boolean :multipleSelection
      t.boolean :enabled
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
