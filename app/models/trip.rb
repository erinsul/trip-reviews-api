class Trip < ActiveRecord::Base
  belongs_to :profile, inverse_of: :trips
  belongs_to :place, inverse_of: :trips
  has_many :descriptions
  has_many :tags, through: :descriptions
end
