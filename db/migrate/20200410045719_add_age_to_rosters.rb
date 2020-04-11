class AddAgeToRosters < ActiveRecord::Migration[5.1]
  def change
    add_column :rosters, :age, :integer
  end
end
