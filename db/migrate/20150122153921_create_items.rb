class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      #amir: Additional fields
      t.string :description
      t.string :onlineViewLabel
      t.string :posViewLabel
      t.string :printLabel
      t.string :imagePath
      t.integer :displayIndex
      t.boolean :visibleOnline
      t.boolean :visibleOnPos
      #End
      t.boolean :enabled
      t.boolean :deleted
      t.references :user, index: true
      t.references :group, index: true
      t.references :item_type, index: true

      t.timestamps null: false
    end
  end
end
