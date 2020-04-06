class RenameAgeColumnToRosters < ActiveRecord::Migration[5.0]
  def change
    rename_column :rosters, :age, :gender
  end
end
