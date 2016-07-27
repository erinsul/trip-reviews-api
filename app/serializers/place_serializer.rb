class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :continent, :profiles
end
