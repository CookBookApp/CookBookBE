class Recipe < ApplicationRecord
  belongs_to :user
  has_many :steps
  has_many :ingredients
  has_many :recipe_keywords
  has_many :cookbook_recipes
  has_many :keywords, through: :recipe_keywords 
  has_many :cookbooks, through: :cookbook_recipes
end
