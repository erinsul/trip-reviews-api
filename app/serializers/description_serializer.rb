class DescriptionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :trip
  has_one :tag
end
