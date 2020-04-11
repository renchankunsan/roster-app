class AddRemarksToRosters < ActiveRecord::Migration[5.1]
  def change
    add_column :rosters, :remarks, :string
  end
end
