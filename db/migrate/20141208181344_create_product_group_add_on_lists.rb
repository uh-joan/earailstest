class CreateProductGroupAddOnLists < ActiveRecord::Migration
  def change
    create_table :product_group_add_on_lists do |t|
      t.integer :displayIndex
      t.integer :logicIndex
      t.boolean :required
      t.belongs_to :product_group
      t.belongs_to :product_group_add_on_list
      t.references :user, index:true

      t.timestamps
    end
  end
end
