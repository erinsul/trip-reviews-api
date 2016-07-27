class Place < ActiveRecord::Base
  validates :name, :country, :continent, presence: true
  validates :name, uniqueness: true
end
