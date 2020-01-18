class CookbookRecipeSerializer < ActiveModel::Serializer
  attributes :id, :cookbook_id, :recipe_id
  has_one :cookbook
  has_one :recipe
end
