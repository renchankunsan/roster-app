class AddImageColumnToRosters < ActiveRecord::Migration[5.1]
  def change
    add_column :rosters, :image, :string
  end
end
