class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :realeased_at
      t.timestamps null: false
    end
  end
end
