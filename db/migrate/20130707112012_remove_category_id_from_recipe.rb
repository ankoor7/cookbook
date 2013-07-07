class RemoveCategoryIdFromRecipe < ActiveRecord::Migration
  def up
    remove_column :recipes, :category_id
  end

  def down
    add_column :recipes, :category_id, :integer
  end
end
