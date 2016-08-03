class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :profiles, :tags
  def profiles
   object.profiles.pluck(:id)
  end
end
