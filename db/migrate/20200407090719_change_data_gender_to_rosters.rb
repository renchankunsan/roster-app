class ChangeDataGenderToRosters < ActiveRecord::Migration[5.0]
  def change
    change_column :rosters, :gender, :string
  end
end
