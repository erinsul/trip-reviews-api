class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :budget
  has_one :profile
  has_one :place
end
