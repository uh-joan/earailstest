class CreateItemAddons < ActiveRecord::Migration
  def change
    create_table :item_addons do |t|
      t.references :item, index: true
      t.references :addon, index: true
      t.boolean :included
      t.boolean :default

      t.timestamps null: false
    end
  end
end
