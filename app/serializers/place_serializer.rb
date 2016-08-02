class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :profiles, :tags
end
