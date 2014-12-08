class CreateProductAddOnListItems < ActiveRecord::Migration
  def change
    create_table :product_add_on_list_items do |t|
      t.references :user, index: true
      t.belongs_to :product_add_on_list
      t.belongs_to :product_add_on

      t.timestamps
    end
  end
end
