class CookbookRecipeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :cookbook
  has_one :recipe
end
