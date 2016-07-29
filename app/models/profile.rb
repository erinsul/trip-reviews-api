class Profile < ActiveRecord::Base
  validates :name, :bio, presence: true
  has_many :trips
  has_many :places, through: :trips
end
