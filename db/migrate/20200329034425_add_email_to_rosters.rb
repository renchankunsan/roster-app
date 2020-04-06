class AddEmailToRosters < ActiveRecord::Migration[5.0]
  def change
    add_column :rosters, :email, :string
  end
end
