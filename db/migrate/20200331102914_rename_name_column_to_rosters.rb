class RenameNameColumnToRosters < ActiveRecord::Migration[5.0]
  def change
    rename_column :rosters, :name, :last_name
  end
end
