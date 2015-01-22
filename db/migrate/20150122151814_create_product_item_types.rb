class CreateProductItemTypes < ActiveRecord::Migration
  def change
    create_table :product_item_types do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
