class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.string :onlineViewLabel
      t.string :posViewLabel
      t.string :posViewLabel
      t.string :headerImagePath
      t.integer :displayIndex
      t.boolean :visibleOnline
      t.boolean :visibleOnPos
      t.boolean :enabled
      t.boolean :deleted
      t.references :user, index: true
      t.references :top_category, index: true

      t.timestamps null: false
    end
  end
end
