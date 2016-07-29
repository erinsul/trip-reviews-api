class Place < ActiveRecord::Base
  validates :name, :country, :continent, presence: true
  validates :name, uniqueness: true
  has_many :trips
  has_many :profiles, through: :trips
end
