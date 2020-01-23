class RecipeCommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :user
  has_one :recipe
end
