class CookbookSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :description
  has_one :user
end
