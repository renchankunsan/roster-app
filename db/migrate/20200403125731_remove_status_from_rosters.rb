class RemoveStatusFromRosters < ActiveRecord::Migration[5.0]
  def change
    remove_column :rosters, :status, :string
  end
end
