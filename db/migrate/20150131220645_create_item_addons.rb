class CreateItemAddons < ActiveRecord::Migration
  def change
    create_table :item_addons do |t|
      t.references :item, index: true
      t.references :addon, index: true
      t.boolean :def_addon
      t.integer :def_qty
      t.integer :qty

      t.timestamps null: false
    end
  end
end

#amir todo: note to self: to calculate additional addons:
# sum of qty (slected addons) - sum of qty of defQty (this is some of default addons that are still slected)
# above total - allowed swap qty (from group addon list) is number of additonal addons to be charged on the cart
