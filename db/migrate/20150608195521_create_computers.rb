class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string  :computer_name
      t.integer :memory
      t.timestamps null: false
    end
  end
end
