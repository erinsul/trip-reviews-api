class Tag < ActiveRecord::Base
  validates :descriptor, presence: true, uniqueness: true,
  inclusion: { in: ['adventure', 'culture', 'history', 'relaxation', 'nightlife',
     'overrated', 'underrated', 'popular', 'off the beaten path'] }
  has_many :descriptions
  has_many :trips, through: :descriptions
end
