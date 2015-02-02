class CreateItemSizes < ActiveRecord::Migration
  def change
    create_table :item_sizes do |t|
      #amir: todo: remove field name
      t.string :name
      #amir adding reference to category_size and price fields
      t.float :cost
      t.float :price
      t.references :category_size, index: true
      #end
      t.references :item, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
