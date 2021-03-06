class Recipe < ActiveRecord::Base
  attr_accessible :description, :instructions, :name, :picture, :recipe_ingredients, :category_id, :category, :tag_list, :ingredients, :user_id, :recipe_image, :recipe_ingredients_attributes
  acts_as_taggable
  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients
  validate :uniqueness_of_ingredients
  belongs_to :user
  mount_uploader :recipe_image, ImageUploaderUploader

  accepts_nested_attributes_for :recipe_ingredients, :allow_destroy => true

  scope :written_by_user, Proc.new { |user| where("user_id = '#{user.id}'") }

  def uniqueness_of_ingredients
    if ingredient_ids.uniq.size != ingredient_ids.size
      errors.add :ingredients, "An ingredient can't be added several times per recipe"
    end
  end
end
