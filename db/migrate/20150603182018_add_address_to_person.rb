class AddAddressToPerson < ActiveRecord::Migration
  def change
    add_column :people, :address, :string
  end
end
