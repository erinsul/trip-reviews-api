class TripSerializer < ActiveModel::Serializer
  attributes :id, :visited, :tags
  has_one :profile
  has_one :place
end
