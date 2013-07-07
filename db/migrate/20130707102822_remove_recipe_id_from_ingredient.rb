class RemoveRecipeIdFromIngredient < ActiveRecord::Migration
  def up
    remove_column :ingredients, :recipe_id
  end

  def down
    add_column :ingredients, :recipe_id, :integer
  end
end
