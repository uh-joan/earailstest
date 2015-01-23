class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
