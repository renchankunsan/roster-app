class AddCategoryIdToRosters < ActiveRecord::Migration[5.1]
  def change
    add_column :rosters, :category_id, :integer
  end
end
