class TripSerializer < ActiveModel::Serializer
  attributes :id, :visited, :place_id, :profile_id, :place, :profile, :tags, :descriptions
  # below is so ember.js front end can interpret
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
