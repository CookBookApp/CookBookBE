class RecipeKeywordSerializer < ActiveModel::Serializer
  attributes :id
  has_one :recipe
  has_one :keyword
end
