class Place < ActiveRecord::Base
  validates :name, :country, presence: true
  validates :name, uniqueness: true
  has_many :trips
  has_many :profiles, through: :trips
  has_many :tags, through: :trips
end
