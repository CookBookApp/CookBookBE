class StepSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :recipe
end
