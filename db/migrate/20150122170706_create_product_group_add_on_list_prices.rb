class CreateProductGroupAddOnListPrices < ActiveRecord::Migration
  def change
    create_table :product_group_add_on_list_prices do |t|
      t.string :cost
      t.float :prices
      t.boolean :enabled
      t.boolean :deleted
      t.references :product_group, index: true
      t.references :pr_gr_adon_li, index: true,
      t.references :product_add_on, index: true
      t.references :pr_cat_size, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
