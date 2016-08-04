class TagSerializer < ActiveModel::Serializer
  attributes :id, :descriptor, :trips
  def trips
   object.trips.pluck(:id)
  end
end
