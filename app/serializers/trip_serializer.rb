class TripSerializer < ActiveModel::Serializer
  attributes :id, :visited, :place_id, :profile_id, :place, :profile, :tags, :descriptions
  def place
   object.place.id
  end

  def profile
   object.profile.id
  end

  def tags
   object.tags.pluck(:id)
  end

  def descriptions
   object.descriptions.pluck(:id)
  end

end
