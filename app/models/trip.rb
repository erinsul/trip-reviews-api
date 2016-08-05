class Trip < ActiveRecord::Base
  belongs_to :profile, inverse_of: :trips
  belongs_to :place, inverse_of: :trips
  has_many :descriptions
  has_many :tags, through: :descriptions

  validates :profile_id, uniqueness: {scope: :place_id}
  validates :place_id, uniqueness: {scope: :profile_id}
end
