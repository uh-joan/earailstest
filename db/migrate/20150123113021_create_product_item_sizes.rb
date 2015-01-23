class CreateProductItemSizes < ActiveRecord::Migration
  def change
    create_table :product_item_sizes do |t|
      t.string :name
      t.references :product_item, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
