class Keyword < ApplicationRecord
    has_many :recipe_keywords
    has_many :recipes, through: :recipe_keywords
end
