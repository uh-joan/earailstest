class CreateProductAddOnListItems < ActiveRecord::Migration
  def change
    create_table :product_add_on_list_items do |t|
      t.references :user, index: true
      t.references :product_add_on_list
      t.references :product_add_on

      t.timestamps null: false
    end
  end
end
