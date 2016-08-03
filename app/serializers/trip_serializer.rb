class TripSerializer < ActiveModel::Serializer
  attributes :id, :visited, :place_id, :profile_id, :place, :profile
  def place
   object.place.id
  end

  def profile
   object.profile.id
  end
end
