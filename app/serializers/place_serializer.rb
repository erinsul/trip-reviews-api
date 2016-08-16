class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :profiles, :tags
  # below is so ember.js front end can interpret
  def profiles
   object.profiles.pluck(:id)
  end
end
