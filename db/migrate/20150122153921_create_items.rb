class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :enabled
      t.boolean :deleted
      t.references :user, index: true
      t.references :group, index: true
      t.references :item_type, index: true

      t.timestamps null: false
    end
  end
end
