class TagSerializer < ActiveModel::Serializer
  attributes :id, :descriptor, :trips
  # below is so ember.js front end can interpret
  def trips
   object.trips.pluck(:id)
  end
end
