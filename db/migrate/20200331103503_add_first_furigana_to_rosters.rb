class AddFirstFuriganaToRosters < ActiveRecord::Migration[5.0]
  def change
    add_column :rosters, :first_furigana, :string
  end
end
