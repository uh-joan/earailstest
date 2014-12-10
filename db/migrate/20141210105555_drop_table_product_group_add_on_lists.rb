class DropTableProductGroupAddOnLists < ActiveRecord::Migration
  def up
    drop_table :product_group_add_on_lists
  end
end
