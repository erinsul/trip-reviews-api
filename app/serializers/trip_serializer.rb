class TripSerializer < ActiveModel::Serializer
  attributes :id, :visited, :place_id, :profile_id
end
