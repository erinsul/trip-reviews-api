class TripSerializer < ActiveModel::Serializer
  attributes :id, :visited, :place_id, :profile_id, :place, :profile, :tags
  def place
   object.place.id
  end

  def profile
   object.profile.id
  end

  def tags
   object.tags.pluck(:id)
  end

end
