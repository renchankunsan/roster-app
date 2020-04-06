class RenameFuriganaColumnToRosters < ActiveRecord::Migration[5.0]
  def change
    rename_column :rosters, :furigana, :last_furigana
  end
end
