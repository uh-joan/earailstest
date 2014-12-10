class DropTableProductGroups < ActiveRecord::Migration
  def up
    drop_table :product_groups
  end
end
