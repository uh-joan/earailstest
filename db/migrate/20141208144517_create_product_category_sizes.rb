class CreateProductCategorySizes < ActiveRecord::Migration
  def change
    create_table :product_category_sizes do |t|
      t.string :prefixLabelOnline
      t.string :prefixLabelPrint
      t.string :prefixLabelPos
      t.string :postLabelOnline
      t.string :postLabelPrint
      t.string :postLabelPos
      t.references :productCategory, index: true

      t.timestamps
    end
  end
end
