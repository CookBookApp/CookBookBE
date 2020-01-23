class RecipeRatingSerializer < ActiveModel::Serializer
  attributes :id, :rating
  has_one :user
  has_one :recipe
end
