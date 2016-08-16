class DescriptionSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :tag_id, :trip, :tag
  # below is so ember.js front end can interpret
  def trip
   object.trip.id
  end
  def tag
   object.tag.id
  end
end
