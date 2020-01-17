class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :ingredient
  has_one :recipe
end
