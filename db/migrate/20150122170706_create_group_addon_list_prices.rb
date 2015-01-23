class CreateGroupAddonListPrices < ActiveRecord::Migration
  def change
    create_table :group_addon_list_prices do |t|
      t.string :cost
      t.float :prices
      t.boolean :enabled
      t.boolean :deleted
      t.references :group, index: true
      t.references :group_addon_list, index: true
      t.references :addon, index: true
      t.references :category_size, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
