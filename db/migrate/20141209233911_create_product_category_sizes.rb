class CreateProductCategorySizes < ActiveRecord::Migration
  def change
    create_table :product_category_sizes do |t|
      t.string :prefixLabelOnline
      t.string :prefixLabelPrint
      t.string :prefixLabelPos
      t.string :postfixLabelOnline
      t.string :postfixLabelPrint
      t.string :postfixLabelPos
      t.references :productCategory, index: true

      t.timestamps null: false
    end
  end
end
