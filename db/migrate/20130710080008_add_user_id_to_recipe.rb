class AddUserIdToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :user_id, :string
  end
end
