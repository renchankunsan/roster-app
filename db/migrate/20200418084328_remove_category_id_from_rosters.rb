class RemoveCategoryIdFromRosters < ActiveRecord::Migration[5.1]
  def change
    remove_column :rosters, :category_id, :integer
  end
end
