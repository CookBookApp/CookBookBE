class RecipeKeyword < ApplicationRecord
  belongs_to :recipe
  belongs_to :keyword
end
