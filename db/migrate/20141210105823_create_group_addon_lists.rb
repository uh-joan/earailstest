class CreateGroupAddonLists < ActiveRecord::Migration
  def change
    create_table :group_addon_lists do |t|
      t.string :name
      t.integer :displayIndex
      t.integer :logicIndex
      t.boolean :required
      #amir: quantity of addons that can be swapped free of charge
      t.integer :allowed_swap_qty
      t.references :group, index: true
      t.references :user, index: true
      t.references :addon_list, index: true

      t.timestamps null: false
    end
  end
end

#logicindex: applies when a addon is required. Determine in what order user needs to select required addons
#allowedSwapQty: number of addons that can be changed without a surcharge, when set to 0 it means any change to
#addons will be charged