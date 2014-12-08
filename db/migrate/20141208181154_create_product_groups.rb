class CreateProductGroups < ActiveRecord::Migration
  def change
    create_table :product_groups do |t|
      t.string :name
      t.string :description
      t.boolean :onlineViewLabel
      t.string :posViewLabel
      t.string :headerImagePath
      t.integer :displayIndex
      t.boolean :visibleOnline
      t.boolean :visibleOnPos
      t.boolean :enabled
      t.boolean :deleted
      t.belongs_to :product_category
      t.references :user, index: true

      t.timestamps
    end
  end
end
