class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :price, precision: 2
      t.integer :meal_id
      t.timestamps null: false
    end
  end
end
