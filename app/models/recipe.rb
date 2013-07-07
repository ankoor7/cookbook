class Recipe < ActiveRecord::Base
  attr_accessible :description, :instructions, :name, :picture, :recipe_ingredients, :category_id, :category, :tag_list
  acts_as_taggable
  belongs_to :category
  has_many 'recipe_ingredients'
  has_many :ingredients, :through => 'recipe_ingredients'
end
