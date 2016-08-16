class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :places
  # below is so ember.js front end can interpret
  def places
   object.places.pluck(:id)
  end
end
