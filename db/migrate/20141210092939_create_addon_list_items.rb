class CreateAddonListItems < ActiveRecord::Migration
  def change
    create_table :addon_list_items do |t|
      t.references :user, index: true
      t.references :addon_list
      t.references :addon

      t.timestamps null: false
    end
  end
end
