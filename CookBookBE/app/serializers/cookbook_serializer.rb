class CookbookSerializer < ActiveModel::Serializer
  attributes :id, :image, :title, :description
  has_one :user
  has_many :recipes
  has_many :cookbook_recipes
end
