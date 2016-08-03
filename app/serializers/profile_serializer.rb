class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :places

  def places
   object.places.pluck(:id)
  end
end
