class Profile < ActiveRecord::Base
  validates :name, :bio, presence: true
  has_many :reviews
  has_many :places, through: :reviews
end
