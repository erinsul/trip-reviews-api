class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :places
end
