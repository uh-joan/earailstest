class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.string :onlineViewLabel
      t.string :posViewLabel
      #amir: changed posViewLabel to printViewLabel
      t.string :printViewLabel
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
