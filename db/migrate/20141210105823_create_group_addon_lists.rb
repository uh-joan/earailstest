class CreateGroupAddonLists < ActiveRecord::Migration
  def change
    create_table :group_addon_lists do |t|
      t.string :name
      t.integer :displayIndex
      t.integer :logicIndex
      t.boolean :required
      t.references :group, index: true
      t.references :user, index: true
      t.references :addon_list, index: true

      t.timestamps null: false
    end
  end
end
