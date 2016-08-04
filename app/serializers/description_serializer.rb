class DescriptionSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :tag_id, :trip, :tag
  def trip
   object.trip.id
  end
  def tag
   object.tag.id
  end
end
