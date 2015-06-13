class AddPrepTimeToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :prep_time, :integer, default: 30
  end
end
