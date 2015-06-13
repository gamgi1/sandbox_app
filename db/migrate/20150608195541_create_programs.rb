class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.belongs_to :computer, index: true
      t.string :program_name
      t.integer :program_size
      t.timestamps null: false
    end
  end
end
