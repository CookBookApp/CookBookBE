class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :description, :image, :prep_time, :cook_time, :total_time
  has_one :user
end
