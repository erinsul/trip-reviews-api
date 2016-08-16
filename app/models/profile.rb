class Profile < ActiveRecord::Base
  validates :name, :bio, :user_id, presence: true
  belongs_to :user
  has_many :trips
  has_many :places, through: :trips
  has_many :descriptions, through: :trips
end
