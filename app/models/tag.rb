class Tag < ActiveRecord::Base
  validates :descriptor, presence: true, uniqueness: true,
  inclusion: { in: ['adventure', 'culture', 'history', 'relaxation', 'partying',
   'overrated', 'underrated', 'popular', 'off the beaten path'] }
end
