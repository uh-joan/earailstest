class CreateProductGroupAddOnLists < ActiveRecord::Migration
  def change
    create_table :product_group_add_on_lists do |t|
      t.string :name
      t.integer :displayIndex
      t.integer :logicIndex
      t.boolean :required
      t.references :product_group, index: true
      t.references :user, index: true
      t.references :product_add_on_list, index: true

      t.timestamps null: false
    end
  end
end
