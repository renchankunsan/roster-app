class AddAttendanceToRosters < ActiveRecord::Migration[5.0]
  def change
    add_column :rosters, :attendance, :string
  end
end
