class MoveDisplayIndexFromAddonsToAddonsListItems < ActiveRecord::Migration
  def change
    remove_column :addons, :displayIndex
    add_column :addon_list_items, :displayIndex, :integer
  end
end
