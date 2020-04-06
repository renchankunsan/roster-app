class AddBirthdayToRosters < ActiveRecord::Migration[5.0]
  def change
    add_column :rosters, :birthday, :date
  end
end
