class AddPersonIdToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :person_id, :integer
  end
end
