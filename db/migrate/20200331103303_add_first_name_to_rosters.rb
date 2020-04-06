class AddFirstNameToRosters < ActiveRecord::Migration[5.0]
  def change
    add_column :rosters, :first_name, :string
  end
end
