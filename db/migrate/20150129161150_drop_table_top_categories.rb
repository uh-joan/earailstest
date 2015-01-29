class DropTableTopCategories < ActiveRecord::Migration
  def change
    drop_table :top_categories
  end
end
