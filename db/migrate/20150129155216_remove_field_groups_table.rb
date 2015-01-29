class RemoveFieldGroupsTable < ActiveRecord::Migration
  def change
    remove_column :groups, :top_category_id
  end
end
