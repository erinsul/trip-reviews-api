class Place < ActiveRecord::Base
  validates :name, :country, :continent, presence: true
  validates :name, uniqueness: true
  has_many :reviews
  has_many :profiles, through: :reviews
end
