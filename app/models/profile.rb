class Profile < ActiveRecord::Base
  validates :name, :bio, presence: true
end
