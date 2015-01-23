class CreateCategorySizes < ActiveRecord::Migration
  def change
    create_table :category_sizes do |t|
      t.string :prefixLabelOnline
      t.string :prefixLabelPrint
      t.string :prefixLabelPos
      t.string :postfixLabelOnline
      t.string :postfixLabelPrint
      t.string :postfixLabelPos
      t.references :top_category, index: true
      t.references :user, index:true

      t.timestamps null: false
    end
  end
end
