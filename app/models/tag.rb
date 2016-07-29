class Tag < ActiveRecord::Base
  validates :descriptor, presence: true, uniqueness: true
  has_many :trips
  has_many :places, through: :trips
  inclusion: { in: ['adventure', 'culture', 'history', 'relaxation', 'partying',
   'overrated', 'underrated', 'popular', 'off the beaten path'] }
end
