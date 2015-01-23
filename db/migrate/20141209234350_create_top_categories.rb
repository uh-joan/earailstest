class CreateTopCategories < ActiveRecord::Migration
  def change
    create_table :top_categories do |t|
      t.string :name
      t.string :shortDescription
      t.boolean :enabled
      t.boolean :deleted
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
