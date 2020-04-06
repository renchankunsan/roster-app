class AddFuriganaToRosters < ActiveRecord::Migration[5.0]
  def change
    add_column :rosters, :furigana, :string
  end
end
