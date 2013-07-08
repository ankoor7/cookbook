class Recipe < ActiveRecord::Base
  attr_accessible :description, :instructions, :name, :picture, :recipe_ingredients, :category_id, :category, :tag_list, :ingredients
  acts_as_taggable
  belongs_to :category
  has_many 'recipe_ingredients'
  has_many :ingredients, :through => 'recipe_ingredients'
  validate :uniqueness_of_ingredients

  def uniqueness_of_ingredients
    # binding.pry
    if ingredient_ids.uniq.size != ingredient_ids.size
      errors.add :ingredients, "An ingredient can't be added several times per recipe"
    end
  end
end
