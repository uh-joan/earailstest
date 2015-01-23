class CreateItemSizes < ActiveRecord::Migration
  def change
    create_table :item_sizes do |t|
      t.string :name
      t.references :item, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
