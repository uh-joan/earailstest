class ChangeNameInCategorySizes < ActiveRecord::Migration
  def change
    rename_column :category_sizes, :top_category_id, :group_id
  end
end
